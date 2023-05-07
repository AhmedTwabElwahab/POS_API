<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
/**
 * Class User
 * @package App\Models
 *
 * @property integer $id
 * @property string  $name
 * @property string  $title
 * @property string  $slug
 * @property string  $email
 * @property string  $user_name
 * @property string  $password
 * @property string  $role
 * @property int     $parent_id
 * @property string  $account_type
 * @property string  $phone
 * @property string  $address
 * @property string  $country
 * @property int     $city
 * @property string  $state
 * @property string  $postcode
 * @property string  $layouts
 * @property string  $image
 * @property string  $thumb
 * @property int     $paypal_payment
 * @property int     $stripe_payment
 * @property string  $paypal_email
 * @property string  $publish_key
 * @property string  $secret_key
 * @property string  $status
 * @property string  $email_verified
 * @property int     $verify_code
 * @property int     $hit
 * @property string  $trial_expire
 * @property string  $created_at
 *
 * RELATIONS PROPERTIES
 *
 *
 * @method static create(array $array)
 */
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
}
