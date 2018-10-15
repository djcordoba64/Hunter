<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\CreateMessageRequest;
 
class PageController extends Controller
{

    //Agregamos un constructor para utilizar el middleware "example",se utiliza only o except.
    public function __construct(){
        $this ->middleware('example',['except'=> ['home'] ]);
    }


    public function home(){
        return view('home');
       // return response('Contenido de la repuesta',201)
        //->header('X-TOKEN','secret')
       // ->cookie('X-COOKIE','cookie');
    }

    public function contact(){
        return view('contactos');
    }

    public function mensajes(CreateMessageRequest $request)
    {       
        //validación fue exitosa-Procesar los datos del formulario
        $data= $request->all();       
        //--Redirección Helper Prima opción
        //return  redirect()->route('contactos')->with('info','Tu mensaje ha sido enviado');
        //--Redirección Helper segunda opción
        return  back()->with('info','Tu mensaje ha sido enviado');


       
    }


    public function saludos($nombre="Invitado"){
       
        $html="<h2>Contenido html</h2>";
        $script="<script>alert('Problema XSS-Cross Site Scripting!')</script>";//ingresado por el formulario

        $consolas=[
        "Play Station4",
        "Xbox One",
        "Wii U"
        ];

        return view ('saludo', compact('nombre','html','script','consolas'));
    }

    
}
