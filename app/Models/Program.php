<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Program
 *
 * @property $id
 * @property $faculty_id
 * @property $coordination_id
 * @property $program_name
 * @property $program_category
 * @property $snies_register
 * @property $program_phone
 * @property $status
 * @property $created_at
 * @property $updated_at
 *
 * @property Area[] $areas
 * @property Coordination $coordination
 * @property Faculty $faculty
 * @property Subject[] $subjects
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Program extends Model
{
    
    static $rules = [
		'faculty_id' => 'required',
		'coordination_id' => 'required',
		'program_name' => 'required',
		'program_category' => 'required',
		'snies_register' => 'required',
		'program_phone' => 'required',
		'status' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['faculty_id','coordination_id','program_name','program_category','snies_register','program_phone','status'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function areas()
    {
        return $this->hasMany('App\Models\Area', 'program_id', 'id');
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
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function subjects()
    {
        return $this->hasMany('App\Models\Subject', 'program_id', 'id');
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
     * @param  mixed  $program_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeProgramNames($query, $program_name) {
    	if ($program_name) {
    		return $query->where('program_name', 'LIKE', '%' . $program_name . '%');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $program_category
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeProgramCategories($query, $program_category) {
    	if ($program_category) {
    		return $query->where('program_category', $program_category);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $snies_register
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeSnies($query, $snies_register) {
    	if ($snies_register) {
    		return $query->where('snies_register', 'LIKE', '%' . $snies_register . '%');
    	}
    }

}
