<?php

namespace App\Http\Controllers;
use Validator;
use Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Post;
use App\Rating;

class UploadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        //
       return view('upload');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = array(
            'title'             => 'required',             
            'description'            => 'required',  
            'featured_image'    =>    'required|mimes:jpeg,png,jpg|max:1000',
            'file_input'         => 'required|mimes:jpeg,png,jpg,gif,svg,pdf|max:10240'       
        );

         $validator = Validator::make(Input::all(), $rules);
         if ($validator->fails()) {

            // get the error messages from the validator
            $messages = $validator->messages();

            // redirect our user back to the form with the errors from the validator
            return Redirect::to('upload')
                ->withErrors($validator);

        } else {
            $destinationPath =  base_path() . '/public/uploads/'; // upload path
            $extension = $request->file_input->getClientOriginalExtension(); // getting image extension
            $uploaded_fileName = time().'.'.$extension; // renameing image
            $request->file_input->move($destinationPath, $uploaded_fileName); // uploading file to given path

            $destinationPath =  base_path() . '/public/uploads/feature/'; // upload path
            $extension = $request->featured_image->getClientOriginalExtension(); // getting image extension
            $featured_fileName = time().'.'.$extension; // renameing image
            $request->featured_image->move($destinationPath, $featured_fileName); // uploading file to given path
            // sending back with message
            //Session::flash('success', 'Upload successfully'); 

            $post = new Post;

            $post->title = $request->title;

            $post->description = $request->description;

            $post->feature_image = $featured_fileName;

            $post->filename = $uploaded_fileName;

            $post->uploaded_date= Carbon::now();

            $post->uploaded_by=Auth::user()->id;

            $post->save();

            $rating=new Rating;

            $rating->post_id=$post->id;

            $rating->rating_count=0;

            $rating->votes=0;

            $rating->save();

            return Redirect::to('upload')->with('message', 'Successfully Uploaded');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
