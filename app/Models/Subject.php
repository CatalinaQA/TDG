<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Subject
 *
 * @property $id
 * @property $faculty_id
 * @property $coordination_id
 * @property $program_id
 * @property $area_id
 * @property $subject_code
 * @property $subject_name
 * @property $subject_credits
 * @property $subject_level
 * @property $prerequisite_code_1
 * @property $prerequisite_name_1
 * @property $prerequisite_code_2
 * @property $prerequisite_name_2
 * @property $corequisite_code_1
 * @property $corequisite_name_1
 * @property $corequisite_code_2
 * @property $corequisite_name_2
 * @property $status
 * @property $created_at
 * @property $updated_at
 *
 * @property Area $area
 * @property Coordination $coordination
 * @property Faculty $faculty
 * @property Program $program
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Subject extends Model
{
    
    static $rules = [
		'faculty_id' => 'required',
		'coordination_id' => 'required',
		'program_id' => 'required',
		'area_id' => 'required',
		'subject_code' => 'required|unique:subjects',
		'subject_name' => 'required|unique:subjects',
		'subject_credits' => 'required',
		'subject_level' => 'required',
		'status' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'faculty_id',
        'coordination_id',
        'program_id',
        'area_id',
        'subject_code',
        'subject_name',
        'subject_credits',
        'subject_level',
        'prerequisite_code_1',
        'prerequisite_name_1',
        'prerequisite_code_2',
        'prerequisite_name_2',
        'corequisite_code_1',
        'corequisite_name_1',
        'corequisite_code_2',
        'corequisite_name_2',
        'status'
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
    public function coordination()
    {
        return $this->hasOne('App\Models\Coordination', 'id', 'coordination_id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function faculty()
    {
        return $this->hasOne('App\Models\Faculty', 'id', 'faculty_id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function program()
    {
        return $this->hasOne('App\Models\Program', 'id', 'program_id');
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $faculty_id
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeFaculties($query, $faculty_id) {
    	if ($faculty_id) {
    		return $query->where('faculty_id', $faculty_id);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $coordination_id
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeCoordinations($query, $coordination_id) {
    	if ($coordination_id) {
    		return $query->where('coordination_id', $coordination_id);
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
    		return $query->where('program_id', $program_id);
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
    		return $query->where('area_id', $area_id);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $subject_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeSubjectNames($query, $subject_name) {
    	if ($subject_name) {
    		return $query->where('subject_name', 'LIKE', '%' . $subject_name . '%')
                        ->orWhere('subject_code', 'LIKE', '%' . $subject_name . '%');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $prerequisite_code
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopePrerequisiteCodes($query, $prerequisite_code) {
    	if ($prerequisite_code) {
    		return $query->where('prerequisite_code_1', 'LIKE', '%' . $prerequisite_code . '%');
    	}
    }

     /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $corequisite_code
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeCorequisiteCodes($query, $corequisite_code) {
    	if ($corequisite_code) {
    		return $query->where('corequisite_code_1', 'LIKE', '%' . $corequisite_code . '%');
    	}
    }
    

}
