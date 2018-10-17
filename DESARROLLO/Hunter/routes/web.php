<?php

Route::get('/', ['as' => 'home','uses'=>'PageController@home']); 
Route::get('saludos/{nombre?}', ['as' => 'saludos','uses'=>'PageController@saludos'])-> where ('nombre',"[A-Za-z]+");

//Mensajes
Route::resource('mensajes','MessagesController');

//Login
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');



