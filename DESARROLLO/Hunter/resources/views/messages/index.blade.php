@extends('layout')


@section('contenido')

<h1>Todos los mensaje</h1>
<table width="100%" border="1">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nombre</th>
			<th>email</th>
			<th>Mensaje</th>
			<th>Acciones</th>

		</tr>
	</thead>
	<body>
		@foreach($messages as $message)
		<tr>
			<td>{{ $message->id }}</td>
			<td>
			<a href="{{route('mensajes.show',$message->id)}}">
				{{ $message->nombre}}
			</a></td>			
			<td>{{ $message->email}}</td>
			<td>{{ $message->mensaje}}</td>
			<td>
				<a href="{{ route('mensajes.edit', $message->id)}}">Editar</a>
				<form style="display:inline" method="POST" action=" {{ route('mensajes.destroy', $message->id) }}">
					{!!csrf_field()!!}
					{!!method_field('DELETE')!!}
					<button type="submit">Eliminar</button>
					
				</form>
			</td>
			
		</tr>
		@endforeach
	</body>
</table>

@stop