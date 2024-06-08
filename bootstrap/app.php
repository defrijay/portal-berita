<?php

 
use App\Http\Middleware\PostOwner;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        // $middleware->append(PostOwner::class);
        $middleware->appendToGroup('Post-Owner', App\Http\Middleware\PostOwner::class);
        $middleware->appendToGroup('Comment-Owner', App\Http\Middleware\CommentOwner::class);
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();
