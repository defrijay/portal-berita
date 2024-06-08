<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\AuthenticationController;

Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('/logout', [AuthenticationController::class, 'logout']);
    route::get('/me', [AuthenticationController::class, 'me']);
    Route::post('/posts', [PostController::class, 'store']);
    Route::patch('/posts/{id}', [PostController::class, 'update'])->middleware('Post-Owner');
    Route::delete('/posts/{id}', [PostController::class, 'destroy'])->middleware('Post-Owner');


    Route::post('/comment', [CommentController::class, 'store']);
    Route::patch('/comment/{id}', [CommentController::class, 'update'])->middleware('Comment-Owner');
    Route::delete('/comment/{id}', [CommentController::class, 'destroy'])->middleware('Comment-Owner');
});

Route::get('/posts', [PostController::class, 'index']);
Route::get('/posts/{id}', [PostController::class, 'show']);


Route::post('/login', [AuthenticationController::class, 'login']);
