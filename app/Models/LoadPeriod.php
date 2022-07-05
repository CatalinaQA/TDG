<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class LoadPeriod
 *
 * @property $id
 * @property $user_id
 * @property $file_name
 * @property $period
 * @property $created_at
 * @property $updated_at
 *
 * @property User $user
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class LoadPeriod extends Model
{
    
    static $rules = [
      'user_id' => 'required',
      'file_name' => 'required',
      'period' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
      'user_id',
      'file_name',
      'period'
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function user()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }
    

}
