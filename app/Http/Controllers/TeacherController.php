<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Teacher;
use App\Models\Schedule;

use Illuminate\Http\Request;

/**
 * Class TeacherController
 * @package App\Http\Controllers
 */
class TeacherController extends Controller
{
    protected $days = [
        1 => "LUNES",
        2 => "MARTES",
        3 => "MIERCOLES",
        4 => "JUEVES",
        5 => "VIERNES",
        6 => "SABADO",
        7 => "DOMINGO",
    ];

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $name         = $request->get('name');
        $contractType = $request->get('contract_type');

        $teachers = User::names($name)
                        ->where('role','docente')
                        ->contractType($contractType)
                        ->paginate(10)
                        ->appends($request->all());

        return view('teacher.index', [
            'teachers' => $teachers,
            'request'  => [
                'name'          => $name,
                'contract_type' => $contractType,
            ]
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $teacher = User::find($id);

        return view('teacher.show', compact('teacher'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function payroll(Request $request)
    {
        $name     = $request->get('name');
        $document = $request->get('document');

        if ($name != null || $document != null) {
            $teacher = User::select('id')
                    ->where('role', 'docente')
                    ->names($name)
                    ->documents($document)
                    ->first();
            if ($teacher) {
                $schedules = Schedule::where('teacher', $teacher->id)->get();
                if (count($schedules) > 0) {
                    $totalHoursT = 0;
                    $totalHoursP = 0;
                    $totalHoursA = 0;
                    $totalHoursE = 0;
                    foreach ($schedules as $key => $schedule) {
                        switch ($schedule['activity']) {
                            case 'TEORICA':
                                $totalHoursT = $totalHoursT + $schedule['total_hours'];
                                break;
                            case 'PRACTICA':
                                $totalHoursP = $totalHoursP + $schedule['total_hours'];
                                break;
                        }

                        $totalHoursA = $totalHoursA + $schedule['consultancies'];
                        $totalHoursE = $totalHoursE + $schedule['evaluation_hours'];
                    }

                    return view('teacher.payroll', [
                        'schedules'   => $schedules,
                        'totalHoursT' => $totalHoursT,
                        'totalHoursP' => $totalHoursP,
                        'totalHoursA' => $totalHoursA,
                        'totalHoursE' => $totalHoursE,
                        'days'        => $this->days,
                        'request'  => [
                            'name'     => $name,
                            'document' => $document,
                        ]
                    ]);
                }
            }
        }

        return view('teacher.payroll', [
            'schedules'=> null,
            'request'  => [
                'name'     => $name,
                'document' => $document,
            ]
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function timetable(Request $request)
    {
        $name     = $request->get('name');
        $document = $request->get('document');

        if ($name != null || $document != null) {
            $teacher = User::select('id', 'name', 'document', 'contract_type')
                    ->where('role', 'docente')
                    ->names($name)
                    ->documents($document)
                    ->first();
            if ($teacher) {
                $schedules = Schedule::where('teacher', $teacher->id)->get();
                if (count($schedules) > 0) {
                    return view('teacher.timetable', [
                        'schedules'   => $schedules,
                        'days'        => $this->days,
                        'teacher'     => $teacher,
                        'request'  => [
                            'name'     => $name,
                            'document' => $document,
                        ]
                    ]);
                }
            }
        }

        return view('teacher.timetable', [
            'schedules'=> null,
            'request'  => [
                'name'     => $name,
                'document' => $document,
            ]
        ]);
    }
}
