<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<style>
		.active{
			text-decoration: none;
			color:green;
		}
		.error{
			
			color:red;
			font-size:12px;
		}
	</style>
	<title>Home</title>
</head>
<body>
	<header>
		<?php function activeMenu($url){
			return request()->is($url) ? 'active': '';

		} ?>
		<nav>
			<a class= "{{ activeMenu('/') }}" href="{{ route('home') }}">Inicio</a>
			
			<a class= "{{ activeMenu('saludos/*') }}" href="{{ route('saludos','Johana')}}">Saludo</a>

			<a class= "{{ activeMenu('contactame')}}" href="{{ route('contactos')}}" >Contactos</a>
		</nav>
	</header>

@yield('contenido')
<footer>Copyright ©{{date('Y')}}</footer>
</body>
</html>