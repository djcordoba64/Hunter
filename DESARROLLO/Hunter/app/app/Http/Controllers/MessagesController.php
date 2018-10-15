<?php

namespace App\Http\Controllers;


use DB;
use Carbon\Carbon;

use Illuminate\Http\Request;


class MessagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //pedimos todos los datos de la tabla
        $messages= DB::table('messages')->get();
        return view('messages.index', compact('messages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //retorna a la vista crete.blade(formulario).Primero se define la carpeta seguido del punto y el método del controlador.
        return view('messages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    //---------------------------------------------------------------------
    //Méto que se encarga de guardar los mensajes en la BD y redirecciona.
    public function store(Request $request)
    {      
        //Guardar mensaje --usuamos el método Query Buielder utiliza la clase(PDO).
         DB::table('messages')->insert([
            "nombre"=> $request->input('nombre'),
            "email"=> $request->input('email'),
            "mensaje"=> $request->input('mensaje'),
            "created_at" =>Carbon::now(),
            "updated_at" =>Carbon::now()
        ]);
        //Redirrecionar
       return redirect()->route('messages.index');
         
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    //--------------------------------------------------------------------
    //mostrar un sólo mensaje de la tabla(pasandole un parámetro)
    public function show($id)
    {
        $message= DB::table('messages')->where('id',$id)->first();
        
        return view('messages.show', compact('message'));

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
