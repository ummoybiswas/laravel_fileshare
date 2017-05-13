<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
	protected $primaryKey='id';
    protected $fillable = [
        'title', 'description', 'feature_image','filename','uploaded_date','uploaded_by',
    ];


    public function rating()
    {
        return $this->hasOne('App\Rating');
    }
}
