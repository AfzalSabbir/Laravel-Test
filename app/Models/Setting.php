<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Setting extends Model
{
	protected $table = "settings";
	
    protected $fillable = ['title_bn', 'title_en', 'logo', 'favicon', 'email', 'mobile', 'facebook', 'twitter', 'youtube', 'linkedin', 'address', 'theme_id'];
}