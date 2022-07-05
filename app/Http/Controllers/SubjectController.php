<?php

namespace App\Http\Controllers;

use App\Models\Area;
use App\Models\Subject;
use App\Models\Program;
use App\Models\Faculty;
use App\Models\Coordination;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Validator;

/**
 * Class SubjectController
 * @package App\Http\Controllers
 */
class SubjectController extends Controller
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
        $areaId         = $request->get('area_id');
        $subjectName    = $request->get('subject_name');
        $prerequisite   = $request->get('prerequisite_code_1');
        $corequisite    = $request->get('corequisite_code_1');

        $faculties     = Faculty::pluck('faculty_name', 'id');
        $coordinations = Coordination::pluck('coordination_name', 'id');
        $programs      = Program::pluck('program_name', 'id');
        $areas         = Area::pluck('area_name', 'id');

        $subjects = Subject::faculties($facultyId)
                            ->coordinations($coordinationId)
                            ->programs($programId)
                            ->areas($areaId)
                            ->subjectNames($subjectName)
                            ->prerequisiteCodes($prerequisite)
                            ->corequisiteCodes($corequisite)
                            ->paginate(10)
                            ->appends($request->all());

        return view('subject.index', [
            'subjects'      => $subjects,
            'faculties'     => $faculties,
            'coordinations' => $coordinations,
            'programs'      => $programs,
            'areas'         => $areas,
            'request'       => [
                'faculty_id'          => $facultyId,
                'coordination_id'     => $coordinationId,
                'program_id'          => $programId,
                'area_id'             => $areaId,
                'subject_name'        => $subjectName,
                'prerequisite_code_1' => $prerequisite,
                'corequisite_code_1'  => $corequisite,
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
        $subject   = new Subject();
        $faculties = Faculty::pluck('faculty_name', 'id');
        return view('subject.create', [
            'faculties'     => $faculties,
            'coordinations' => [],
            'programs'      => [],
            'areas'         => [],
            'subject'       => $subject,
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
            'faculty_id.unique' => 'Given Faculty-Coordination-Program-Area and Subject are not unique',
        ];
        
        $validator = Validator::make($request->all(), [
            'faculty_id' => [
                'required',
                Rule::unique('subjects')->where(function ($query) use($request) {
                    return $query->where('faculty_id', $request->faculty_id)
                    ->where('coordination_id', $request->coordination_id)
                    ->where('program_id', $request->program_id)
                    ->where('area_id', $request->area_id)
                    ->where('subject_code', $request->subject_code)
                    ->where('subject_name', $request->subject_name);
                }),
            ],
        ],
        $messages
        );

        if ($validator->fails()) {
            return redirect('subjects/create')
                        ->withErrors($validator)
                        ->withInput();
        }

        request()->validate(Subject::$rules);

        $subject = Subject::create($request->all());

        return redirect()->route('subjects.index')
            ->with('success', 'Asignatura creada satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $subject = Subject::find($id);

        return view('subject.show', compact('subject'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $subject       = Subject::find($id);
        $faculties     = Faculty::pluck('faculty_name', 'id');
        $coordinations = Coordination::where('faculty_id', $subject->faculty_id)
                                        ->pluck('coordination_name', 'id');

        $programs      = Program::where('faculty_id', $subject->faculty_id)
                                    ->where('coordination_id', $subject->coordination_id)
                                    ->pluck('program_name', 'id');

        $areas         = Area::where('faculty_id', $subject->faculty_id)
                                ->where('coordination_id', $subject->coordination_id)
                                ->where('program_id', $subject->program_id)
                                ->pluck('area_name', 'id');

        return view('subject.edit', [
            'faculties'     => $faculties,
            'coordinations' => $coordinations,
            'programs'      => $programs,
            'areas'         => $areas,
            'subject'       => $subject,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Subject $subject
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Subject $subject)
    {
        $messages = [
            'faculty_id.unique' => 'Given Faculty-Coordination-Program-Area and Subject are not unique',
        ];
        
        $validator = Validator::make($request->all(), [
            'faculty_id' => [
                'required',
                Rule::unique('subjects')->where(function ($query) use($request, $subject) {
                    return $query->where('faculty_id', $request->faculty_id)
                    ->where('coordination_id', $request->coordination_id)
                    ->where('program_id', $request->program_id)
                    ->where('area_id', $request->area_id)
                    ->where('subject_code', $request->subject_code)
                    ->where('subject_name', $request->subject_name)
                    ->where('id', '<>', $subject->id);
                }),
            ],
        ],
        $messages
        );

        if ($validator->fails()) {
            return redirect('subjects/' . $subject->id . '/edit')
                        ->withErrors($validator)
                        ->withInput();
        }

        $rules = Subject::$rules;
        $rules['subject_code'] = 'required|unique:subjects,subject_code,' . $subject->id;
        $rules['subject_name'] = 'required|unique:subjects,subject_name,' . $subject->id;

        request()->validate($rules);

        $subject->update($request->all());

        return redirect()->route('subjects.index')
            ->with('success', 'Asignatura actualizada satisfactoriamente');
    }
}
