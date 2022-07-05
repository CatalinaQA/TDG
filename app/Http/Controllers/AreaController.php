<?php

namespace App\Http\Controllers;

use App\Models\Area;
use App\Models\User;
use App\Models\Program;
use App\Models\Faculty;
use App\Models\Coordination;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;

/**
 * Class AreaController
 * @package App\Http\Controllers
 */
class AreaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $facultyId      = $request->get('faculty_id');
        $coordinationId = $request->get('coordination_id');
        $programId      = $request->get('program_id');
        $areaName       = $request->get('area_name');

        $faculties     = Faculty::pluck('faculty_name', 'id');
        $coordinations = Coordination::pluck('coordination_name', 'id');
        $programs      = Program::pluck('program_name', 'id');

        $areas = Area::faculties($facultyId)
                    ->coordinations($coordinationId)
                    ->programs($programId)
                    ->areaNames($areaName)
                    ->paginate(10)
                    ->appends($request->all());

        return view('area.index', [
            'areas'         => $areas,
            'faculties'     => $faculties,
            'coordinations' => $coordinations,
            'programs'      => $programs,
            'request'       => [
                'faculty_id'      => $facultyId,
                'coordination_id' => $coordinationId,
                'program_id'      => $programId,
                'area_name'       => $areaName,
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
        $area = new Area();
        $faculties     = Faculty::pluck('faculty_name', 'id');
        $coordinators  = User::where('role', 'coordinador área')->pluck('name', 'id');
        return view('area.create', [
            'faculties'     => $faculties,
            'coordinations' => [],
            'programs'      => [],
            'area'          => $area,
            'coordinators'  => $coordinators,
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
            'faculty_id.unique' => 'Facultad-Coordinación-Programa y Area no son únicos',
        ];
        
        $validator = Validator::make($request->all(), [
            'faculty_id' => [
                'required',
                Rule::unique('areas')->where(function ($query) use($request) {
                    return $query->where('faculty_id', $request->faculty_id)
                    ->where('coordination_id', $request->coordination_id)
                    ->where('program_id', $request->program_id)
                    ->where('area_name', $request->area_name);
                }),
            ],
        ],
        $messages
        );

        if ($validator->fails()) {
            return redirect('areas/create')
                        ->withErrors($validator)
                        ->withInput();
        }

        request()->validate(Area::$rules);

        $area = Area::create($request->all());

        return redirect()->route('areas.index')
            ->with('success', 'Área creada satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $area = Area::find($id);

        return view('area.show', compact('area'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $area          = Area::find($id);
        $faculties     = Faculty::pluck('faculty_name', 'id');
        $coordinations = Coordination::where('faculty_id', $area->faculty_id)
                                     ->pluck('coordination_name', 'id');

        $programs      = Program::where('faculty_id', $area->faculty_id)
                                ->where('coordination_id', $area->coordination_id)
                                ->pluck('program_name', 'id');
        $coordinators  = User::where('role', 'coordinador área')->pluck('name', 'id');

        return view('area.edit', [
            'faculties'     => $faculties,
            'coordinations' => $coordinations,
            'programs'      => $programs,
            'area'          => $area,
            'coordinators'  => $coordinators,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Area $area
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Area $area)
    {
        $messages = [
            'faculty_id.unique' => 'Facultad-Coordinación-Programa y Area no son únicos',
        ];
        
        $validator = Validator::make($request->all(), [
            'faculty_id' => [
                'required',
                Rule::unique('areas')->where(function ($query) use($request, $area) {
                    return $query->where('faculty_id', $request->faculty_id)
                    ->where('coordination_id', $request->coordination_id)
                    ->where('program_id', $request->program_id)
                    ->where('area_name', $request->area_name)
                    ->where('id', '<>', $area->id);
                }),
            ],
        ],
        $messages
        );

        if ($validator->fails()) {
            return redirect('areas/' . $area->id . '/edit')
                        ->withErrors($validator)
                        ->withInput();
        }

        request()->validate(Area::$rules);

        $area->update($request->all());

        return redirect()->route('areas.index')
            ->with('success', 'Área actualizada satisfactoriamente');
    }

    public function getAreas($coodinationId, $facultyId, $programId)
    {
        $areas = Area::where('faculty_id', $facultyId)
            ->where('coordination_id', $coodinationId)
            ->where('program_id', $programId)
            ->pluck('area_name', 'id');

        return $areas;
    }
}
