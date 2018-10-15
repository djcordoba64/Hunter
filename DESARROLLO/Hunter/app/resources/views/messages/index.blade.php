@extends('layout')
@section('contenido')

<h1>Todos los mensaje</h1>
<table width="100%" border="1">
	<thead>
		<tr>
			<th>Nombre</th>
			<th>email</th>
			<th>Mensaje</th>

		</tr>
	</thead>
	<body>
		@foreach($messages as $message)
		<tr>
			<td>{{ $message->id }}</td>
			<td>
			<a href="{{route('message.show',$message->id)}}">
				<td>{{ $message->nombre}}</td>
			</a>
			<td>{{ $message->email}}</td>
			<td>{{ $message->mensaje}}</td>
		</tr>
		@endforeach
	</body>
</table>

@stop