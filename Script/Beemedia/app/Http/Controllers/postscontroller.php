<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Category;
use TCG\Voyager\Models\User;
use App\Http\Requests;
use App\Post;
use App\Deslike;
use Session;
use Auth;
use App\Point;

class postscontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    public function __construct() {

        $this->middleware('auth');

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // this query to get all Categores and return it to home page //
        $Categores = Category::all();
        return view('posts.create',compact('Categores'));
    }
    

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function video()
    {
        // this query to get all Categores and return it to USERS page //
        $Posts = Post::where('vedio', '!=', null)->orderBy('created_at','desc')->paginate(6);
        // this query to get all Points and return it to USERS page //
        $Points = Point::all();
        // this query to get all Categores and return it to home page in menu //
        $Catmenus = Category::all();
        // RETURN TO  USERS Leaderboard page //
        return view('posts.video',compact('Posts','Points','Catmenus'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // THIS FUNCTION CREATE NEW POST IN PAGE POSTS CREATE //
        $Post = new Post;
        // THIS INPUT RETURN FROM CREATE PAGE POST //
        $Post->author_id = Auth::id();
        $Post->category_id = $request->input('category_id');
        $Post->title = $request->input('title');
        $Post->body = $request->input('body');
        $Post->slug = $request->input('title');
        $Post->vedio = $request->input('vedio');
        // THIS FUNCTION CREATE NEW IMAGE POST IN PAGE POSTS CREATE //
         if ($request->file('image')){  
          $file = $request->file('image');
          // THIS FUNCTION TO GET DATE NAME FILE //
          $date = date('FY');
          // THIS TO GET FILE PATCH //
          $destinationPath = 'storage/posts/'.$date.'/';
          $viewimage = 'posts/'.$date.'/';         
          $filename = $viewimage.$file->getClientOriginalName();
          $file->move($destinationPath, $filename); 
          $Post->image = $filename;
          // THIS TO SAVE  //
          $Post->save();
       }else{
          // THIS TO SAVE //
          $Post->save();
       }
       // THIS FUNCTION return YOU back CHANGE IT TO WAHT YOU WANT  //
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        // this query to get Post and return it to Post page  //
        $Post = Post::where('slug', '=', $slug)->firstOrFail();
        // this query to get Popular Posts and return it to Popular Posts page  //
        $PopularPosts = Post::orderBy('created_at','desc')->paginate(5);
        // this query to get all Categores and return it to home page //
        $Catmenus = Category::all();
        //To Get All Comments Post  OUT SIDE IN HOME VIEW
        $comments = $Post->comments;
        //To Get All likes Post  OUT SIDE IN HOME VIEW
        $likes = $Post->likes;
        //To Get All des likes Post  OUT SIDE IN HOME VIEW
        $deslikes = $Post->deslikes;
        
        return view('posts.show', compact('Post','PopularPosts','Catmenus','comments','likes','deslikes'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($slug)
    {
    
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $slug
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $slug)
    {
        
    }
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // TO GET Post SINGLE
        $Post = Post::findOrFail($id);
        // TO GET Post SINGLE AND delete IT
        $Post->delete();
        // TO RETURN BACK BAGE
        return back();
    }
}
