<?php

Route::get('/', ['as' => 'home','uses'=>'PageController@home']); 

Route::get('contactame', ['as' => 'contactos','uses'=>'PageController@contact']); 
Route::post('contacto','PageController@mensajes');
Route::get('saludos/{nombre?}', ['as' => 'saludos','uses'=>'PageController@saludos'])-> where ('nombre',"[A-Za-z]+");
//Mensajes
Route::get('mensajes', ['as'=>'messages.index','uses'=> 'MessagesController@index']);
Route::get('mensajes/create' , ['as'=>'messages.create','uses'=> 'MessagesController@create']);
Route::post('mensajes' , ['as'=>'messages.store','uses'=> 'MessagesController@store']);
//mostrar un sólo mensaje de la tabla(pasar un parámetro)
Route::get('mensajes/{id}' , ['as'=>'messages.show','uses'=> 'MessagesController@show']);



