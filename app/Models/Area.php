<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Area
 *
 * @property $id
 * @property $faculty_id
 * @property $coordination_id
 * @property $program_id
 * @property $area_name
 * @property $coordinator_name
 * @property $coordinator_email
 * @property $status
 * @property $created_at
 * @property $updated_at
 *
 * @property Coordination $coordination
 * @property Faculty $faculty
 * @property Program $program
 * @property Subject[] $subjects
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Area extends Model
{
    
    static $rules = [
		'faculty_id' => 'required',
		'coordination_id' => 'required',
		'program_id' => 'required',
		'area_name' => 'required',
		'area_coordinator' => 'required',
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
        'area_name',
        'area_coordinator',
        'status'
    ];


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
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function subjects()
    {
        return $this->hasMany('App\Models\Subject', 'area_id', 'id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function user()
    {
        return $this->hasOne('App\Models\User', 'id', 'area_coordinator');
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
     * @param  mixed  $area_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeAreaNames($query, $area_name) {
    	if ($area_name) {
    		return $query->where('area_name', 'LIKE', '%' . $area_name . '%');
    	}
    }

}
