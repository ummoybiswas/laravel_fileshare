@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Upload</div>
                <div class="panel-body">
                    @if (session('message'))
                        <div class="alert alert-success" style='text-align:center'>
                            <strong>{{session('message')}}!!!</strong>
                        </div>
                     @endif   
                    
                    <form class="form-horizontal" role="form" method="POST" action="upload" enctype="multipart/form-data">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Title</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="title" value="{{ old('title') }}" autofocus>

                                @if ($errors->has('title'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('title') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                            <label for="description" class="col-md-4 control-label">Description</label>

                            <div class="col-md-6">
                                <input id="description" type="text" class="form-control" name="description" value="{{ old('description') }}">

                                @if ($errors->has('description'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('description') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('featured_image') ? ' has-error' : '' }}">
                            <label for="featured_image" class="col-md-4 control-label">Featured image</label>

                            <div class="col-md-6">
                                <input id="featured_image" type="file" class="form-control" name="featured_image">

                                @if ($errors->has('featured_image'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('featured_image') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('file_input') ? ' has-error' : '' }}">
                            <label for="file_input" class="col-md-4 control-label">File Input</label>

                            <div class="col-md-6">
                                <input id="file_input" type="file" class="form-control" name="file_input">

                                @if ($errors->has('file_input'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('file_input') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-success">
                                    Upload Now
                                </button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
