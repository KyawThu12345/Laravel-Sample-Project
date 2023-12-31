<?php

use Illuminate\Support\Facades\Route;
use Whoops\Run;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', 'App\Http\Controllers\PageController@index');
/*
|--------------------------------------------------------------------------
| For Product
|--------------------------------------------------------------------------
*/
Route::get('/products/create', 'App\Http\Controllers\ProductController@create');
Route::post('/products/create', 'App\Http\Controllers\ProductController@store');
Route::get('products', 'App\Http\Controllers\PageController@index');
Route::get('products/{id}/add-cart', 'App\Http\Controllers\PageController@add');
Route::get('products/cart', 'App\Http\Controllers\PageController@show');
