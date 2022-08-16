<?php

namespace App\Imports;

use App\Models\Teacher;
use App\Models\Subject;
use App\Models\Schedule;
use App\Models\LoadPeriod;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

use Maatwebsite\Excel\Concerns\ToModel;


class LoadPeriodsImport implements ToModel
{

    protected $period;
    protected $load_period;


    public function __construct()
    {
        $month        = date('m');
        $semester     = (int)floor(($month-1)/6)+1;
        $this->period = date('Y') . '-' . $semester;

        $this->load_period = LoadPeriod::create([
            'user_id'   => Auth::id(),
            'file_name' => request()->file('file')->getClientOriginalName(),
            'period'    => $this->period
        ]);

    }



    public function model(array $row)
    {
            $total_hours= '100';

            return new Schedule([
                'subject_id'          => '215',
                'program_id'          => '4',
                'teacher'             => '22',
                'area_id'             => '21',
                'campus'              => '10',
                'group'               => '1',
                'detail'              => 'Grupo de CLASE TEORICA.',
                'day'                 => '3',
                'start_hour'          => '6',
                'start_minute'        => '0',
                'end_hour'            => '8',
                'end_minute'          => '0',
                'classroom'           => 'P17-109',
                'activity'            => 'TEORICA',
                'classroom_capacity'  => '40',
                'scheduled_capacity'  => '10',
                'enrolled'            => '9',
                'plan'                => '1',
                'total_hours'         => $total_hours,

                'evaluation_hours'    => $total_hours/2,
                'observations'        => 'NONE',
                'offer'               => 's',
                'updated_by'          => '1',
                'status'              => 'Pendiente',
                'load_id'             => $this->load_period->id,
            ]);

    }
}
