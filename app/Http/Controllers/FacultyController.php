<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Faculty;
use Illuminate\Http\Request;

/**
 * Class FacultyController
 * @package App\Http\Controllers
 */
class FacultyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $facultyName = $request->get('faculty_name');
        $deanName    = $request->get('dean_name');

        $faculties = Faculty::facultyNames($facultyName)
                ->deanNames($deanName)
                ->paginate(10)
                ->appends($request->all());

        return view('faculty.index', [
            'faculties' => $faculties,
            'request' => [
                'faculty_name' => $facultyName, 
                'dean_name'    => $deanName
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
        $faculty = new Faculty();
        $deans   = User::where('role', 'decano')->pluck('name', 'id');
        return view('faculty.create', [
            'faculty' => $faculty,
            'deans'   => $deans
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
        request()->validate(Faculty::$rules);

        $faculty = Faculty::create($request->all());

        return redirect()->route('faculties.index')
            ->with('success', 'Facultad creada satisfactoriamente');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $faculty = Faculty::find($id);

        return view('faculty.show', compact('faculty'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $faculty = Faculty::find($id);

        return view('faculty.edit', compact('faculty'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Faculty $faculty
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Faculty $faculty)
    {
        $rules = Faculty::$rules;
        $rules['faculty_name'] = 'required|unique:faculties,faculty_name,' . $faculty->id;
        request()->validate($rules);

        $faculty->update($request->all());

        return redirect()->route('faculties.index')
            ->with('success', 'Facultad actualizada satisfactoriamente');
    }
}
