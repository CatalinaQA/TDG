<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Faculty;
use App\Models\Coordination;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;

/**
 * Class CoordinationController
 * @package App\Http\Controllers
 */
class CoordinationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        

        $facultyId        = $request->get('faculty_id');
        $coordinationName = $request->get('coordination_name');

        $faculties     = Faculty::pluck('faculty_name', 'id');

        $coordinations = Coordination::faculties($facultyId)
            ->coordinationNames($coordinationName)
            ->paginate(10)
            ->appends($request->all());

        return view('coordination.index', [
            'coordinations' => $coordinations,
            'faculties'     => $faculties,
            'request'       => [
                'faculty_id'         => $facultyId, 
                'coordination_name'  => $coordinationName
            ]
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $coordination = new Coordination();
        $faculties    = Faculty::pluck('faculty_name', 'id');
        $coordinators = User::where('role', 'profesional especializado')->pluck('name', 'id');

        return view('coordination.create', [
            'coordination' => $coordination,
            'faculties'    => $faculties,
            'coordinators' => $coordinators,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $messages = [
            'faculty_id.unique' => 'Facultad y Coordinación no son únicos',
        ];
        
        $validator = Validator::make($request->all(), [
            'faculty_id' => [
                'required',
                Rule::unique('coordinations')->where(function ($query) use($request) {
                    return $query->where('faculty_id', $request->faculty_id)
                    ->where('coordination_name', $request->coordination_name);
                }),
            ],
        ],
        $messages
        );

        if ($validator->fails()) {
            return redirect('coordinations/create')
                        ->withErrors($validator)
                        ->withInput();
        }

        request()->validate(Coordination::$rules);

        $coordination = Coordination::create($request->all());

        return redirect()->route('coordinations.index')
            ->with('success', 'Coordinación creada satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $coordination = Coordination::find($id);

        return view('coordination.show', compact('coordination'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $coordination = Coordination::find($id);
        $faculties    = Faculty::pluck('faculty_name', 'id');

        return view('coordination.edit', [
            'coordination' => $coordination,
            'faculties'    => $faculties,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Coordination $coordination
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Coordination $coordination)
    {
        $messages = [
            'faculty_id.unique' => 'Facultad y Coordinación no son únicos',
        ];
        
        $validator = Validator::make($request->all(), [
            'faculty_id' => [
                'required',
                Rule::unique('coordinations')->where(function ($query) use($request, $coordination) {
                    return $query->where('faculty_id', $request->faculty_id)
                    ->where('coordination_name', $request->coordination_name)
                    ->where('id', '<>', $coordination->id);
                }),
            ],
        ],
        $messages
        );

        if ($validator->fails()) {
            return redirect('coordinations/' . $coordination->id . '/edit')
                        ->withErrors($validator)
                        ->withInput();
        }

        request()->validate(Coordination::$rules);

        $coordination->update($request->all());

        return redirect()->route('coordinations.index')
            ->with('success', 'Coordinación actualizada satisfactoriamente');
    }

    public function getCoordinations($facultyId)
    {
        $coordinations = Coordination::where('faculty_id', $facultyId)->pluck('coordination_name', 'id');
        return $coordinations;
    }
}