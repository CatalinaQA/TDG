@extends('layouts.app')

@section('template_title')
    Horario Docentes
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Horario Docentes') }}
                            </span>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar docentes</b></span>
                        <form method="GET" action="{{ route('teachers.timetable') }}"  role="form">
                            @include('teacher.search_form_teacher')
                        </form>
                    </div>

                    @if ($schedules != null)
                        <div class="row justify-content-center">
                            <div class="col-auto">
                                <table class="table table-responsive">
                                    <thead class="thead">
                                        <tr>
                                            <th>Nombre docente</th>                                            
                                            <th>Documento docente</th>                                            
                                            <th>Tipo Contrato</th>                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <td>{{ $teacher->name }}</td>
                                        <td>{{ $teacher->document }}</td>
                                        <td>{{ $teacher->contract_type }}</td>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead class="thead">
                                        <tr>
                                            <th>Código</th>
                                            <th>Nombre asignatura</th>
                                            <th>Día</th>
                                            <th>Hora</th>
                                            <th>Groupo</th>
                                            <th>Aula</th>
                                            <th>Actividad</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($schedules as $schedule)
                                        <tr>
                                            <td>{{ $schedule->subject->subject_code }}</td>
                                            <td>{{ $schedule->subject->subject_name }}</td>
                                            <td>{{ $days[$schedule->day] }}</td>
                                            <td>{{ $schedule->start_hour . ':' . $schedule->start_minute . '-' . $schedule->end_hour . ':' . $schedule->end_minute }}</td>
                                            <td>{{ $schedule->group }}</td>
                                            <td>{{ $schedule->classroom }}</td>
                                            <td>{{ $schedule->activity }}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    @endif
                </div>                
            </div>
        </div>
    </div>
@endsection