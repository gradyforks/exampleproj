<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Post;
use App\Like;
use App\Point;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\Likerequest;
use App\Http\Requests;


class Likecontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // this query to get Post and return it to Post page  //
        $post = Post::findOrFail($request->post_id);
        // THIS FUNCTION TO CREATE Like WITH SINGLE POST  //
        Like::create([
            'like' => $request->like,
            'user_id' => Auth::id(),
            'post_id' => $post->id
        ]);
        // THIS FUNCTION TO CREATE Point WITH SINGLE POST  //
        Point::create([
            'Points' => 1,
            'user_id' => Auth::id()
        ]); 
        // THIS FUNCTION return YOU back CHANGE IT TO WAHT YOU WANT  //
        return back();
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
        // TO GET Like SINGLE
        $Like = Like::findOrFail($id);
        // TO GET Like SINGLE AND delete IT
        $Like->delete();
        // TO RETURN BACK BAGE
        return back();
    }
}
