<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Faculty
 *
 * @property $id
 * @property $faculty_name
 * @property $dean_name
 * @property $dean_email
 * @property $dean_phone
 * @property $faculty_auxiliar_name
 * @property $faculty_auxiliar_email
 * @property $faculty_auxiliar_phone
 * @property $status
 * @property $created_at
 * @property $updated_at
 *
 * @property Area $area
 * @property Coordination $coordination
 * @property Program $program
 * @property Subject $subject
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Faculty extends Model
{
    
    static $rules = [
		'faculty_name' => 'required|unique:faculties',
		'dean'         => 'required',
		'dean_phone'   => 'required',
		'status'       => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'faculty_name',
        'dean',
        'dean_phone',
        'faculty_auxiliar_name',
        'faculty_auxiliar_email',
        'faculty_auxiliar_phone',
        'status'
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function area()
    {
        return $this->hasOne('App\Models\Area', 'faculty_id', 'id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function coordination()
    {
        return $this->hasOne('App\Models\Coordination', 'faculty_id', 'id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function program()
    {
        return $this->hasOne('App\Models\Program', 'faculty_id', 'id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function subject()
    {
        return $this->hasOne('App\Models\Subject', 'faculty_id', 'id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function user()
    {
        return $this->hasOne('App\Models\User', 'id', 'dean');
    }
    

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $faculty_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeFacultyNames($query, $faculty_name) {
    	if ($faculty_name) {
    		return $query->where('faculty_name', 'LIKE', '%' . $faculty_name . '%');
    	}
    }


    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $dean_name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeDeanNames($query, $dean_name) {
    	if ($dean_name) {
    		return $query->where('users.name', 'LIKE', '%' . $dean_name . '%')
                        ->orWhere('users.email', 'LIKE', '%' . $dean_name . '%')
                        ->where('users.role', 'decano')
                        ->join('users', 'faculties.dean', '=', 'users.id');
    	}
    }

}
