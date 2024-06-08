<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;
use App\Http\Resources\CommentResource;

class CommentController extends Controller
{
    public function store(Request $request){
        $post_id = $request->post_id;
        $validated = $request->validate([
            'post_id' => 'required|exists:posts,id',
            'comment_content' => 'required',
        ]);

        
        $request['user_id'] = auth()->user()->id;
        $comment = Comment::create($request->all());

        return new CommentResource($comment->loadMissing('commentator:id,username'));
    }

    public function update(Request $request, $id){
        $validated = $request->validate([
            'comment_content' => 'required',
        ]);

        $comment = Comment::findOrFail($id);
        $comment->update($request->only('comment_content'));

        return new CommentResource($comment->loadMissing('commentator:id,username'));
    }

    public function destroy($id){
        $comment = Comment::findOrFail($id);
        $comment->delete();

        return new CommentResource($comment->loadMissing('commentator:id,username'));
    }
}
