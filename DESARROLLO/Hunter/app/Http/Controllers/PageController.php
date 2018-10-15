<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
 use App\Http\Requests\CreateMessageRequest;

class PageController extends Controller
{
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

    

    public function index()
    {
        //
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
        //
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
        //
    }
}
