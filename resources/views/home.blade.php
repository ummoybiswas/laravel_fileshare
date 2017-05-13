@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @foreach ($posts as $post)
                          <!-- Left-aligned media object -->

                          @if($post->votes==0)
                              <?php $votes=1;?>
                          @else
                               <?php $votes=$post->votes;?>
                          @endif
                          
                          <script type="text/javascript">
                            $(function() {
                              $("#rating_simple{{$post->id}}").webwidget_rating_simple({
                              rating_star_length: '5',
                              rating_initial_value: '{{$post->rating_count/$votes}}',
                              rating_function_name: '',
                              directory: '/images'
                             });
                          });
                          </script>  

                          <div class="media">
                            <div class="media-left">
                              <img src="/uploads/feature/{{$post->feature_image}}" class="media-object" style="width:150px;">
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">{{$post->title}}</h4>
                                <p>{{$post->description}}</p>
                                  
                                <a href="/uploads/{{$post->filename}}" class="btn btn-default btn-xs"><i class="fa fa-share"></i> Download Now</a>
                                <div class="pull-right">
                                  <input name="my_input" value="0" id="rating_simple{{$post->id}}" type="hidden"></div>
                                <br/>
                                <span class="pull-right text-muted">{{$post->votes}} votes</span>

                            </div>
                          </div>
                          <hr>


                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
