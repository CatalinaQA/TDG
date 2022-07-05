@extends('layouts.app')

@section('template_title')
    Programación Académica
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Programación Académica') }}
                            </span>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar programación</b></span>
                        <form method="GET" action="{{ route('schedules.index') }}"  role="form">
                            @include('schedule.search_form')
                        </form>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>Sede</th>
                                        <th>Código</th>
                                        <th>Groupo</th>
                                        <th>Nombre</th>
                                        <th>Detalle</th>
                                        <th>Día</th>
                                        <th>Hora</th>
                                        <th>Aula</th>
                                        <th>Actividad</th>
                                        <th>Nivel estudio</th>
                                        <th>Créditos</th>
                                        <th>Capacidad aula</th>
                                        <th>Capacidad programada</th>
                                        <th>Matriculados</th>
                                        <th>Programa</th>
                                        <th>Plan</th>
                                        <th>Total horas</th>
                                        <th>Horas asesorías</th>
                                        <th>Horas evaluación</th>
                                        <th>Cédula docente</th>
                                        <th>Nombre docente</th>
                                        <th>Tipo vinculación docente</th>
                                        <th>Área</th>
                                        <th>Coordinador</th>
                                        <th>Observaciones</th>
                                        <th>Estado</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($schedules as $schedule)
                                        <tr>
                                            <td>{{ $campus[$schedule->campus] }}</td>
                                            <td>{{ $schedule->subject->subject_code }}</td>
                                            <td>{{ $schedule->group }}</td>
                                            <td>{{ $schedule->subject->subject_name }}</td>
                                            <td>{{ $schedule->detail }}</td>
                                            <td>{{ $days[$schedule->day] }}</td>
                                            <td>{{ $schedule->start_hour . ':' . $schedule->start_minute . '-' . $schedule->end_hour . ':' . $schedule->end_minute }}</td>
                                            <td>{{ $schedule->classroom }}</td>
                                            <td>{{ $schedule->activity }}</td>
                                            <td>{{ $schedule->subject->subject_level }}</td>
                                            <td>{{ $schedule->subject->credits }}</td>
                                            <td>{{ $schedule->classroom_capacity }}</td>
                                            <td>{{ $schedule->scheduled_capacity }}</td>
                                            <td>{{ $schedule->enrolled }}</td>
                                            <td>{{ $schedule->program->program_name }}</td>
                                            <td>{{ $schedule->plan }}</td>
                                            <td>{{ $schedule->total_hours }}</td>
                                            <td>{{ $schedule->consultancies }}</td>
                                            <td>{{ $schedule->evaluation_hours }}</td>
                                            <td>{{ ($schedule->teacher != "") ? $schedule->teachers->document : "" }}</td>
                                            <td>{{ ($schedule->teacher != "") ? $schedule->teachers->name : "" }}</td>
                                            <td>{{ ($schedule->teacher != "") ? $schedule->teachers->contract_type : "" }}</td>
                                            <td>{{ $schedule->area->area_name }}</td>
                                            <td>{{ $schedule->area->user->name }}</td>
                                            <td>{{ $schedule->observations }}</td>
                                            <td>{{ $schedule->status }}</td>
                                            <td>
                                                <a class="btn btn-sm btn-primary " href="{{ route('schedules.show',$schedule->id) }}"><i class="fa fa-fw"></i> Mostrar</a>
                                                @if ($role !== 'admisiones')
                                                    <a class="btn btn-sm btn-success" href="{{ route('schedules.edit',$schedule->id) }}"><i class="fa fa-fw"></i> Editar</a>
                                                @endif
                                                @if ($role !== 'admisiones' || $role !== 'admin')
                                                    <button id="anwer-btn" type="button" class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#answer" data-id="{{ $schedule->id }}" data-observations="{{ $schedule->observations }}">Responder</button>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $schedules->links() !!}
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="answer" tabindex="-1" aria-labelledby="answerLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="answerLabel">Responder</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="answers" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="box box-info padding-1">
                            <div class="box-body">
                                <div class="form-group">
                                    {{ Form::hidden('id', '') }}
                                    {{ Form::label('Observaciones') }}
                                    {{ Form::text('observations', "", ['class' => 'form-control' . ($errors->has('observations') ? ' is-invalid' : ''), 'placeholder' => 'Observaciones', 'required' => 'required']) }}
                                    {!! $errors->first('observations', '<div class="invalid-feedback">:message</p>') !!}
                                </div>
                            </div>
                            <br>
                            <button class="btn btn-primary btn-sm float-left" type="submit" name="action" value="accept">Aceptar</button>
                            <button class="btn btn-danger btn-sm float-right" type="submit" name="action" value="rejected">Rechazar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('body').on('click', '#anwer-btn', function (event) {
                event.preventDefault();
                var id           = $(this).data('id');
                var observations = $(this).data('observations');

                $('[name="observations"]').val(observations);
                $('[name="id"]').val(id);
            });
        });
    </script>
@endsection
