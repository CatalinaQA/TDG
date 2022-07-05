<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'role',
        'status',
        'document',
        'cellphone_number',
        'contract_type',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $name
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeNames($query, $name) {
    	if ($name) {
    		return $query->where('name', 'LIKE', '%' . $name . '%');
    	}
    }

    /**
     * Scope a query to only include users of a given type.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @param  mixed  $role
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeRoles($query, $role) {
    	if ($role) {
    		return $query->where('role', $role);
    	}
    }

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
     * @param  mixed  $document
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeDocuments($query, $document) {
    	if ($document) {
    		return $query->where('document', 'LIKE', '%' . $document . '%');
    	}
    }
}
