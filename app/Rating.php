<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
	 protected $table='rating';
	 
     protected $fillable = [
        'post_id', 'rating_count', 'votes',
    ];

    
}
