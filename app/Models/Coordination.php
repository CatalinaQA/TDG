<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Coordination
 *
 * @property $id
 * @property $faculty_id
 * @property $coordination_name
 * @property $professional_name
 * @property $professional_email
 * @property $professional_phone
 * @property $coordination_auxiliar_name
 * @property $coordination_auxiliar_email
 * @property $coordination_auxiliar_phone
 * @property $status
 * @property $created_at
 * @property $updated_at
 *
 * @property Area[] $areas
 * @property Faculty $faculty
 * @property Program[] $programs
 * @property Subject[] $subjects
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Coordination extends Model
{
    
    static $rules = [
		'faculty_id' => 'required',
		'coordination_name' => 'required',
		'coordinator' => 'required',
		'professional_phone' => 'required',
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
        'coordination_name',
        'coordinator',
        'professional_phone',
        'coordination_auxiliar_name',
        'coordination_auxiliar_email',
        'coordination_auxiliar_phone',
        'status'
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function areas()
    {
        return $this->hasMany('App\Models\Area', 'coordination_id', 'id');
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
    public function programs()
    {
        return $this->hasMany('App\Models\Program', 'coordination_id', 'id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function subjects()
    {
        return $this->hasMany('App\Models\Subject', 'coordination_id', 'id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function user()
    {
        return $this->hasOne('App\Models\User', 'id', 'coordinator');
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
     * @param  mixed  $coordination_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeCoordinationNames($query, $coordination_name) {
    	if ($coordination_name) {
    		return $query->where('coordination_name', 'LIKE', '%' . $coordination_name . '%');
    	}
    }

}
