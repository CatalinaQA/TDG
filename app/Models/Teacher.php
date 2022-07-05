<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Teacher
 *
 * @property $id
 * @property $name
 * @property $document
 * @property $email
 * @property $phone_number
 * @property $cellphone_number
 * @property $contract_type
 * @property $status
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Teacher extends Model
{
    
    static $rules = [
      'name'          => 'required',
      'document'      => 'required',
      'email'         => 'required|email|unique:teachers',
      'contract_type' => 'required',
      'status'        => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
      'name',
      'document',
      'email',
      'phone_number',
      'cellphone_number',
      'contract_type',
      'status'
    ];

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $contract_type
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeContractType($query, $contract_type) {
    	if ($contract_type) {
    		return $query->where('contract_type', $contract_type);
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeNames($query, $name) {
    	if ($name) {
    		return $query->where('name', 'LIKE', '%' . $name . '%')
                    ->orWhere('document', 'LIKE', '%' . $name . '%');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeNameTeachers($query, $name) {
    	if ($name) {
    		return $query->where('name', 'LIKE', '%' . $name . '%');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $document
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeDocuments($query, $document) {
    	if ($document) {
    		return $query->where('document', 'LIKE', '%' . $document . '%');
    	}
    }
}
