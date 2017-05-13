<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use View;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('guest');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::join('rating', 'rating.post_id', '=', 'posts.id')->get();
        
        return View::make('home')->with(array('posts'=>$posts));
    }
}
