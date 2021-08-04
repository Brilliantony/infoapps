<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\AwfeController;
use App\Http\Controllers\AgentController;
use App\Http\Controllers\TLController;
use App\Http\Controllers\SiteAwalController;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/', [AuthController::class, 'showFormLogin'])->name('login');
Route::get('login', [AuthController::class, 'showFormLogin'])->name('login');
Route::post('login', [AuthController::class, 'login']);
Route::get('register', [AuthController::class, 'showFormRegister'])->name('register');
Route::post('register', [AuthController::class, 'register']);

Route::group(['middleware' => 'auth'], function () {
    
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('logout', [AuthController::class, 'logout'])->name('logout');

    Route::resource('awfe', AwfeController::class);
    Route::resource('agent', AgentController::class);
    Route::resource('tl', TLController::class);
    Route::resource('site_awal', SiteAwalController::class); 
    
    Route::group(['prefix'=>'awfe'], function(){
        Route::get('/show',[AwfeController::class,'index']);
        Route::get('/show/{id}',[AwfeController::class,'show']);
        Route::post('/create', [AwfeController::class,'create']);
        Route::post('/delete', [AwfeController::class,'delete']);
        Route::get('/edit/{id}',[AwfeController::class,'edit']);
        Route::post('/update',[AwfeController::class,'update']);
    });

    Route::group(['prefix'=>'agent'], function(){
        Route::get('/getAll',[AgentController::class,'getAll']);
        Route::get('/show',[AgentController::class,'index']);
        Route::get('/show/{id}',[AgentController::class,'show']);
        Route::post('/create', [AgentController::class,'create']);
        Route::post('/delete', [AgentController::class,'delete']);
        Route::get('/edit/{id}',[AgentController::class,'edit']);
        Route::post('/update',[AgentController::class,'update']);
    });

    Route::group(['prefix'=>'tl'], function(){
        Route::get('/show',[TLController::class,'index']);
        Route::get('/show/{id}',[TLController::class,'show']);
        Route::post('/create', [TLController::class,'create']);
        Route::post('/delete', [TLController::class,'delete']);
        Route::get('/edit/{id}',[TLController::class,'edit']);
        Route::post('/update',[TLController::class,'update']);
    });

    Route::group(['prefix'=>'site_awal'], function(){
        Route::get('/show',[SiteAwalController::class,'index']);
        Route::get('/show/{id}',[SiteAwalController::class,'show']);
        Route::post('/create', [SiteAwalController::class,'create']);
        Route::post('/delete', [SiteAwalController::class,'delete']);
        Route::get('/edit/{id}',[SiteAwalController::class,'edit']);
        Route::post('/update',[SiteAwalController::class,'update']);
    });

    Route::group(['prefix'=>'form'], function(){
        Route::get('awfe', function () { return view('awfe.form'); });
        Route::get('agent', function () { 
            $tl = App\Models\TL::all();
            $site_awal = App\Models\SiteAwal::all();
            $params = [
                'tl'        => $tl,
                'site_awal' => $site_awal
            ];
            return view('agent.form', $params); 
        });
        Route::get('tl', function () { return view('tl.form'); });
        Route::get('site_awal', function () { return view('site_awal.form'); });
        Route::get('search-name-tl',[AgentController::class,'searchNameTL']);
        Route::get('search-site_awal',[AgentController::class,'searchSiteAwal']);
    });
    
});

Route::get('user/userlist', [UserController::class, 'userlist']);
