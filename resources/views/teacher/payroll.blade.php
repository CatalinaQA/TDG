@extends('layouts.app')

@section('template_title')
    Nómina Docentes
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Nómina Docentes') }}
                            </span>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar docentes</b></span>
                        <form method="GET" action="{{ route('teachers.payroll') }}"  role="form">
                            @include('teacher.search_form_teacher')
                        </form>
                    </div>

                    @if ($schedules != null)
                        <div class="row justify-content-center">
                            <div class="col-auto">
                                <table class="table table-responsive">
                                    <thead class="thead">
                                        <tr>
                                            <th>Total horas teóricas</th>
                                            <th>{{ $totalHoursT }}</th>
                                        </tr>
                                        <tr>
                                            <th>Total horas prácticas</th>
                                            <th>{{ $totalHoursP }}</th>
                                        </tr>
                                        <tr>
                                            <th>Total horas asesorias</th>
                                            <th>{{ $totalHoursA }}</th>
                                        </tr>
                                        <tr>
                                            <th>Total horas evaluación</th>
                                            <th>{{ $totalHoursE }}</th>
                                        </tr>
                                    </thead>
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
                                            <th>Plan</th>
                                            <th>Día</th>
                                            <th>Hora</th>
                                            <th>Groupo</th>
                                            <th>Actividad</th>
                                            <th>Nombre docente</th>
                                            <th>Documento docente</th>
                                            <th>Tipo vinculación docente</th>
                                            <th>Total horas</th>
                                            <th>Horas asesorías</th>
                                            <th>Horas evaluación</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($schedules as $schedule)
                                        <tr>
                                            <td>{{ $schedule->subject->subject_code }}</td>
                                            <td>{{ $schedule->subject->subject_name }}</td>
                                            <td>{{ $schedule->plan }}</td>
                                            <td>{{ $days[$schedule->day] }}</td>
                                            <td>{{ $schedule->start_hour . ':' . $schedule->start_minute . '-' . $schedule->end_hour . ':' . $schedule->end_minute }}</td>
                                            <td>{{ $schedule->group }}</td>
                                            <td>{{ $schedule->activity }}</td>
                                            <td>{{ $schedule->teachers->name }}</td>
                                            <td>{{ $schedule->teachers->document }}</td>
                                            <td>{{ $schedule->teachers->contract_type }}</td>
                                            <td>{{ $schedule->total_hours }}</td>
                                            <td>{{ $schedule->consultancies }}</td>
                                            <td>{{ $schedule->evaluation_hours }}</td>
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