<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Schedule
 *
 * @property $id
 * @property $subject_id
 * @property $program_id
 * @property $teacher_id
 * @property $area_id
 * @property $campus
 * @property $group
 * @property $detail
 * @property $day
 * @property $start_hour
 * @property $start_minute
 * @property $end_hour
 * @property $end_minute
 * @property $classroom
 * @property $activity
 * @property $classroom_capacity
 * @property $scheduled_capacity
 * @property $enrolled
 * @property $plan
 * @property $total_hours
 * @property $consultancies
 * @property $evaluation_hours
 * @property $observations
 * @property $offer
 * @property $updated_by
 * @property $status
 * @property $load_id
 * @property $created_at
 * @property $updated_at
 *
 * @property Area $area
 * @property LoadPeriod $loadPeriod
 * @property Program $program
 * @property Subject $subject
 * @property Teacher $teacher
 * @property User $user
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Schedule extends Model
{
    
    static $rules = [
		'subject_id' => 'required',
		'program_id' => 'required',
		'area_id' => 'required',
		'campus' => 'required',
		'group' => 'required',
		'day' => 'required',
		'start_hour' => 'required',
		'start_minute' => 'required',
		'end_hour' => 'required',
		'end_minute' => 'required',
		'classroom' => 'required',
		'activity' => 'required',
		'classroom_capacity' => 'required',
		'total_hours' => 'required',
		'consultancies' => 'required',
		'evaluation_hours' => 'required',
		'offer' => 'required',
		'status' => 'required',
		'load_id' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'subject_id',
        'program_id',
        'teacher',
        'area_id',
        'campus',
        'group',
        'detail',
        'day',
        'start_hour',
        'start_minute',
        'end_hour',
        'end_minute',
        'classroom',
        'activity',
        'classroom_capacity',
        'scheduled_capacity',
        'enrolled',
        'plan',
        'total_hours',
        'consultancies',
        'evaluation_hours',
        'observations',
        'offer',
        'updated_by',
        'status',
        'load_id'
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function area()
    {
        return $this->hasOne('App\Models\Area', 'id', 'area_id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function loadPeriod()
    {
        return $this->hasOne('App\Models\LoadPeriod', 'id', 'load_id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function program()
    {
        return $this->hasOne('App\Models\Program', 'id', 'program_id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function subject()
    {
        return $this->hasOne('App\Models\Subject', 'id', 'subject_id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function teachers()
    {
        return $this->hasOne('App\Models\User', 'id', 'teacher');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function user()
    {
        return $this->hasOne('App\Models\User', 'id', 'updated_by');
    }
    
    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $campus
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeCampus($query, $campus) {
    	if ($campus) {
    		return $query->where('campus', $campus);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $subject_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeSubjects($query, $subject_name) {
    	if ($subject_name) {
    		return $query->where('subjects.subject_name', 'LIKE', '%' . $subject_name . '%')
                        ->orWhere('subjects.subject_code', 'LIKE', '%' . $subject_name . '%')
                        ->join('subjects', 'schedules.subject_id', '=', 'subjects.id');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $group
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeGroups($query, $group) {
    	if ($group) {
    		return $query->where('group', $group);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $day
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeDays($query, $day) {
    	if ($day) {
    		return $query->where('day', $day);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $start_hour
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeStartHours($query, $start_hour) {
    	if ($start_hour) {
            $arrayHour = explode(":", $start_hour);
    		return $query->where('start_hour', $arrayHour[0])
                        ->where('start_minute', $arrayHour[1]);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $end_hour
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeEndHours($query, $end_hour) {
    	if ($end_hour) {
            $arrayHour = explode(":", $end_hour);
    		return $query->where('end_hour', $arrayHour[0])
                        ->where('end_minute', $arrayHour[1]);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $classroom
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeClassrooms($query, $classroom) {
    	if ($classroom) {
    		return $query->where('classroom', 'LIKE', '%' . $classroom . '%');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $activity
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeActivities($query, $activity) {
    	if ($activity) {
    		return $query->where('activity', 'LIKE', '%' . $activity . '%');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $subject_level
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeSubjectLeveles($query, $subject_level) {
    	if ($subject_level) {
    		return $query->where('subjects.subject_level', $subject_level)
                        ->join('subjects', 'schedules.subject_id', '=', 'subjects.id');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $program_id
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopePrograms($query, $program_id) {
    	if ($program_id) {
    		return $query->where('schedules.program_id', $program_id);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $teacher_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeTeachers($query, $teacher_name) {
    	if ($teacher_name) {
    		return $query->where('users.name', 'LIKE', '%' . $teacher_name . '%')
                        ->orWhere('users.document', 'LIKE', '%' . $teacher_name . '%')
                        ->where('users.role', 'docente')
                        ->join('users', 'schedules.teacher', '=', 'users.id');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $area_id
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeAreas($query, $area_id) {
    	if ($area_id) {
    		return $query->where('schedules.area_id', $area_id);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $coordinator_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeAreaCoordinators($query, $coordinator_name) {
    	if ($coordinator_name) {
    		return $query->where('users.name', 'LIKE', '%' . $coordinator_name . '%')
                        ->where('users.role', 'coordinador área')
                        ->join('areas', 'schedules.area_id', '=', 'areas.id')
                        ->join('users', 'areas.area_coordinator', '=', 'users.id');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $coordinator_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeAdmisions($query, $role) {
    	if ($role === 'admisiones') {
    		return $query->where('schedules.status', 'Pendiente aprovación');
    	}
    }

}
