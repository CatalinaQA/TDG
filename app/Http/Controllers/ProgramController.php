<?php

namespace App\Http\Controllers;

use App\Models\Program;
use App\Models\Faculty;
use App\Models\Coordination;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;

/**
 * Class ProgramController
 * @package App\Http\Controllers
 */
class ProgramController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $facultyId       = $request->get('faculty_id');
        $coordinationId  = $request->get('coordination_id');
        $programName     = $request->get('program_name');
        $programCategory = $request->get('program_category');
        $sniesRegister   = $request->get('snies_register');

        $faculties     = Faculty::pluck('faculty_name', 'id');
        $coordinations = Coordination::pluck('coordination_name', 'id');

        $programs = Program::faculties($facultyId)
                        ->coordinations($coordinationId)
                        ->programNames($programName)
                        ->programCategories($programCategory)
                        ->snies($sniesRegister)
                        ->paginate(10)
                        ->appends($request->all());

        return view('program.index', [
            'programs'      => $programs,
            'faculties'     => $faculties,
            'coordinations' => $coordinations,
            'request'       => [
                'faculty_id'       => $facultyId,
                'coordination_id'  => $coordinationId,
                'program_name'     => $programName,
                'program_category' => $programCategory,
                'snies_register'   => $sniesRegister,
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
        $program       = new Program();
        $faculties     = Faculty::pluck('faculty_name', 'id');
        return view('program.create', [
            'program'       => $program,
            'coordinations' => [],
            'faculties'     => $faculties,
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
            'faculty_id.unique' => 'Facultad y Coordinación y Programa no son únicos',
        ];
        
        $validator = Validator::make($request->all(), [
            'faculty_id' => [
                'required',
                Rule::unique('programs')->where(function ($query) use($request) {
                    return $query->where('faculty_id', $request->faculty_id)
                    ->where('coordination_id', $request->coordination_id)
                    ->where('program_name', $request->program_name);
                }),
            ],
        ],
        $messages
        );

        if ($validator->fails()) {
            return redirect('programs/create')
                        ->withErrors($validator)
                        ->withInput();
        }

        request()->validate(Program::$rules);

        $program = Program::create($request->all());

        return redirect()->route('programs.index')
            ->with('success', 'Programa creado satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $program = Program::find($id);

        return view('program.show', compact('program'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $program       = Program::find($id);
        $faculties     = Faculty::pluck('faculty_name', 'id');
        $coordinations = Coordination::where('faculty_id', $program->faculty_id)
                                    ->pluck('coordination_name', 'id');

        return view('program.edit', [
            'program'       => $program,
            'coordinations' => $coordinations,
            'faculties'     => $faculties,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Program $program
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Program $program)
    {
        $messages = [
            'faculty_id.unique' => 'Facultad y Coordinación y Programa no son únicos',
        ];
        
        $validator = Validator::make($request->all(), [
            'faculty_id' => [
                'required',
                Rule::unique('programs')->where(function ($query) use($request, $program) {
                    return $query->where('faculty_id', $request->faculty_id)
                    ->where('coordination_id', $request->coordination_id)
                    ->where('program_name', $request->program_name)
                    ->where('id', '<>', $program->id);
                }),
            ],
        ],
        $messages
        );

        if ($validator->fails()) {
            return redirect('programs/' . $program->id . '/edit')
                        ->withErrors($validator)
                        ->withInput();
        }

        request()->validate(Program::$rules);

        $program->update($request->all());

        return redirect()->route('programs.index')
            ->with('success', 'Programa actualizado satisfactoriamente');
    }

    public function getPrograms($coodinationId, $facultyId)
    {
        $programs = Program::where('faculty_id', $facultyId)
            ->where('coordination_id', $coodinationId)
            ->pluck('program_name', 'id');

        return $programs;
    }
}
