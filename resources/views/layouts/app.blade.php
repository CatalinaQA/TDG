<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/jquery/jquery.min.js')}}"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app" style="background-color: darkgreen">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <img src="{{ asset('images/politecnico.jpeg')}}" alt="" style="height: auto;width: 80px;">
                <a class="navbar-brand" href="{{ url('/') }}">
                    Programación Academica
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    @if (Auth::check())

                        @if (Auth::user()->role === 'admin' || Auth::user()->role === 'coordinador')
                            <ul class="navbar-nav me-auto">
                                <li class="nav-item dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre><b>Usuarios</b></a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="{{ route('users.index') }}">{{ __('Lista de usuarios') }}</a>
                                    </div>
                                </li>
                            </ul>
                        @endif
                            <ul class="navbar-nav me-auto">
                                <li class="nav-item dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre><b>Información general</b></a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">                                        
                                        <a class="dropdown-item" href="{{ route('faculties.index') }}">{{ __('Facultades') }}</a>
                                        <a class="dropdown-item" href="{{ route('coordinations.index') }}">{{ __('Coordinaciones') }}</a>
                                        <a class="dropdown-item" href="{{ route('programs.index') }}">{{ __('Programas') }}</a>
                                        <a class="dropdown-item" href="{{ route('areas.index') }}">{{ __('Áreas') }}</a>
                                        <a class="dropdown-item" href="{{ route('subjects.index') }}">{{ __('Asignaturas') }}</a>
                                    </div>
                                </li>
                            </ul>
                        @if (Auth::user()->role !== 'admisiones')
                            <ul class="navbar-nav me-auto">
                                <li class="nav-item dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre><b>Docentes</b></a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="{{ route('teachers.index') }}">{{ __('Directorio docentes') }}</a>
                                        <a class="dropdown-item" href="{{ route('teachers.payroll') }}">{{ __('Nómina') }}</a>
                                        <a class="dropdown-item" href="{{ route('teachers.timetable') }}">{{ __('Horario docentes') }}</a>
                                    </div>
                                </li>
                            </ul>
                        @endif
                            <ul class="navbar-nav me-auto">
                                <li class="nav-item dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre><b>Archivos</b></a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="{{ route('load-periods.index') }}">{{ __('Cargar periodo') }}</a>
                                    </div>
                                </li>
                            </ul>
                            <ul class="navbar-nav me-auto">
                                <a class="nav-link" href="{{ route('schedules.index') }}"><b>{{ __('Programación académica') }}</b></a>
                            </ul>
                        
                    <!-- Left Side Of Navbar -->
                    

                    @endif
                    

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif
<!--
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
-->
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>
                                    <a class="dropdown-item" href="{{ route('auth.change_password') }}">{{ __('Cambiar contraseña') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
