<?php

namespace App\Http\Controllers;

use App\Models\Area;
use App\Models\User;
use App\Models\Teacher;
use App\Models\Program;
use App\Models\Schedule;
use App\Models\LoadPeriod;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

/**
 * Class ScheduleController
 * @package App\Http\Controllers
 */
class ScheduleController extends Controller
{
    protected $campus = [
        10 => "POBLADO",
        40 => "APARTADO",
        52 => "RIONEGRO"
    ];

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
        $campus          = $request->get('campus');
        $subjectName     = $request->get('subject_name');
        $group           = $request->get('group');
        $day             = $request->get('day');
        $startHour       = $request->get('start_hour');
        $endHour         = $request->get('end_hour');
        $classroom       = $request->get('classroom');
        $activity        = $request->get('activity');
        $subjectLevel    = $request->get('subject_level');
        $programId       = $request->get('program_id');
        $teacherName     = $request->get('teacher_name');
        $areaId          = $request->get('area_id');
        $coordinatorName = $request->get('coordinator_name');
        $roleAdmisions   = Auth::user()->role;

        $loadPeriod = LoadPeriod::max('id');
        $programs   = Program::pluck('program_name', 'id');
        $areas      = Area::pluck('area_name', 'id');

        $schedules  = Schedule::select('schedules.*')->campus($campus)
            ->subjects($subjectName)
            ->groups($group)
            ->days($day)
            ->startHours($startHour)
            ->endHours($endHour)
            ->classrooms($classroom)
            ->activities($activity)
            ->subjectLeveles($subjectLevel)
            ->programs($programId)
            ->teachers($teacherName)
            ->areas($areaId)
            ->areaCoordinators($coordinatorName)
            ->admisions($roleAdmisions)
            ->where('load_id', $loadPeriod)
            ->paginate(10)
            ->appends($request->all());



        return view('schedule.index', [
            'schedules' => $schedules,
            'campus'    => $this->campus,
            'days'      => $this->days,
            'programs'  => $programs,
            'areas'     => $areas,
            'role'      => $roleAdmisions,
            'request'  => [
                'campus'           => $campus,
                'subject_name'     => $subjectName,
                'group'            => $group,
                'day'              => $day,
                'start_hour'       => $startHour,
                'end_hour'         => $endHour,
                'classroom'        => $classroom,
                'activity'         => $activity,
                'subject_level'    => $subjectLevel,
                'program_id'       => $programId,
                'teacher_name'     => $teacherName,
                'area_id'          => $areaId,
                'coordinator_name' => $coordinatorName,
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
        $schedule = Schedule::find($id);

        return view('schedule.show', [
            'schedule'  => $schedule,
            'campus'    => $this->campus,
            'days'      => $this->days,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $schedule = Schedule::find($id);
        $teachers = User::select('id', 'name', 'document', 'contract_type')
                        ->where('role', 'docente')
                        ->get();

        foreach ($teachers as $key => $value) {
            $arrayTeachers[$value->id] = $value->document . ' - ' . $value->name . ' (' . $value->contract_type . ')';
        }

        return view('schedule.edit', [
            'schedule'          => $schedule,
            'campus'            => $this->campus,
            'days'              => $this->days,
            'start_hour'        => $schedule->start_hour . ':' . $schedule->start_minute,
            'end_hour'          => $schedule->end_hour . ':' . $schedule->end_minute,
            'teachers'          => $arrayTeachers,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Schedule $schedule
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Schedule $schedule)
    {
        $input = $request->all();
        $rules = [
            'group'              => 'required',
            'day'                => 'required',
            'start_hour'         => 'required',
            'end_hour'           => 'required',
            'classroom'          => 'required',
            'classroom_capacity' => 'required|numeric|gt:0',
            'total_hours'        => 'numeric',
            'consultancies'      => 'required|numeric',
            'evaluation_hours'   => 'required|numeric',
            'teacher'            => 'required',
        ];

        request()->validate($rules);

        $startHours = explode(':', $input['start_hour']);
        $endHours   = explode(':', $input['end_hour']);

        $input['start_hour']   = $startHours[0];
        $input['start_minute'] = $startHours[1];
        $input['end_hour']     = $endHours[0];
        $input['end_minute']   = $endHours[1];

        // Calculate theory_hours
        $start_hour           = (int)$input['start_hour'] + (int)$input['start_minute']/60;
        $end_hour             = (int)$input['end_hour'] + (int)$input['end_minute']/60;
        $input['total_hours'] = $end_hour - $start_hour;

        $input['status']      = 'Pendiente aprovación';
        $input['updated_by']  = Auth::id();

        $schedule->update($input);

        return redirect()->route('schedules.index')
            ->with('success', 'Programación actualizada satisfactoriamente');
    }

    /**
     * Update the observations column in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function answer(Request $request)
    {
        $schedule = Schedule::find($request->get('id'));
        if ($schedule) {
            $update['observations'] = $request->get('observations');
            if ($request->get('action') == 'accept') {
                $update['status']   = 'Aceptado';
            }
            if ($request->get('action') == 'rejected') {
                $update['status']   = 'Rechazado';
            }

            $schedule->update($update);

            return redirect()->route('schedules.index')
                ->with('success', 'Programación actualizada satisfactoriamente');
        }
    }
}
