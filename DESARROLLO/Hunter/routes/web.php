<?php

Route::get('/', ['as' => 'home','uses'=>'PageController@home'])->middleware('example'); 

Route::get('contactame', ['as' => 'contactos','uses'=>'PageController@contact']); 
Route::post('contacto','PageController@mensajes');
Route::get('saludos/{nombre?}', ['as' => 'saludos','uses'=>'PageController@saludo'])-> where ('nombre',"[A-Za-z]+");





