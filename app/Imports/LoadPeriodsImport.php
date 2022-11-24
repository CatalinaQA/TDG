<?php

namespace App\Imports;

use App\Models\Teacher;
use App\Models\Subject;
use App\Models\Schedule;
use App\Models\LoadPeriod;

use Illuminate\Support\Facades\Auth;

use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithCustomCsvSettings;

class LoadPeriodsImport implements ToModel, WithStartRow, WithCustomCsvSettings
{
    protected $period;
    protected $load_period;

    public function startRow(): int
    {
        return 1;
    }

    public function getCsvSettings(): array
    {
        return [
            'delimiter' => ';'
        ];
    }

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

    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)

    {
        // Find the subjectId
        $subject = Subject::where('subject_code',$row[1])->first();

        if ($subject) {

            // Calculate theory_hours
            $start_hour  = $row[8]  + $row[9]/60;
            $end_hour    = $row[10] + $row[11]/60;
            $total_hours = $end_hour - $start_hour;

            $startHour   = strlen($row[8]) > 1 ? $row[8] : 0 . $row[8];
            $startMinute = strlen($row[9]) > 1 ? $row[9] : 0 . $row[9];

            $endHour   = strlen($row[10]) > 1 ? $row[10] : 0 . $row[10];
            $endMinute = strlen($row[11]) > 1 ? $row[11] : 0 . $row[11];

            return new Schedule([
                'subject_id'          => $subject->id,
                'program_id'          => $subject->program_id,
                'area_id'             => $subject->area_id,
                'teacher'             => $row[12],
                'campus'              => $row[0],
                'group'               => $row[2],
                'detail'              => $row[5],
                'day'                 => $row[7],
                'start_hour'          => $startHour,
                'start_minute'        => $startMinute,
                'end_hour'            => $endHour,
                'end_minute'          => $endMinute,
                'classroom'           => $row[6],
                'activity'            => $row[4],
                'classroom_capacity'  => $row[13],
                'enrolled'            => $row[14],
                'total_hours'         => $total_hours,
                'offer'               => $row[15],
                'status'              => 'Pendiente',
                'load_id'             => $this->load_period->id,
            ]);
        }
    }
}
