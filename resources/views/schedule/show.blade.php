@extends('layouts.app')

@section('template_title')
    {{ $schedule->name ?? 'Ver programación académica' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Ver programación académica</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('schedules.index') }}"> Atrás</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Sede:</strong>
                            {{ $campus[$schedule->campus] }}
                        </div>
                        <div class="form-group">
                            <strong>Código:</strong>
                            {{ $schedule->subject->subject_code }}
                        </div>
                        <div class="form-group">
                            <strong>Groupo:</strong>
                            {{ $schedule->group }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            {{ $schedule->subject->subject_name }}
                        </div>
                        <div class="form-group">
                            <strong>Detalle:</strong>
                            {{ $schedule->detail }}
                        </div>
                        <div class="form-group">
                            <strong>Día:</strong>
                            {{ $days[$schedule->day] }}
                        </div>
                        <div class="form-group">
                            <strong>Hora:</strong>
                            {{ $schedule->start_hour . ':' . $schedule->start_minute . '-' . $schedule->end_hour . ':' . $schedule->end_minute }}
                        </div>
                        <div class="form-group">
                            <strong>Aula:</strong>
                            {{ $schedule->classroom }}
                        </div>
                        <div class="form-group">
                            <strong>Actividad:</strong>
                            {{ $schedule->activity }}
                        </div>
                        <div class="form-group">
                            <strong>Nivel estudio:</strong>
                            {{ $schedule->subject->subject_level }}
                        </div>
                        <div class="form-group">
                            <strong>Créditos:</strong>
                            {{ $schedule->subject->credits }}
                        </div>
                        <div class="form-group">
                            <strong>Capacidad aula:</strong>
                            {{ $schedule->classroom_capacity }}
                        </div>
                        <div class="form-group">
                            <strong>Capacidad programada:</strong>
                            {{ $schedule->scheduled_capacity }}
                        </div>
                        <div class="form-group">
                            <strong>Matriculados:</strong>
                            {{ $schedule->enrolled }}
                        </div>
                        <div class="form-group">
                            <strong>Programa:</strong>
                            {{ $schedule->program->program_name }}
                        </div>
                        <div class="form-group">
                            <strong>Plan:</strong>
                            {{ $schedule->plan }}
                        </div>
                        <div class="form-group">
                            <strong>Total horas:</strong>
                            {{ $schedule->total_hours }}
                        </div>
                        <div class="form-group">
                            <strong>Asesorías:</strong>
                            {{ $schedule->consultancies }}
                        </div>
                        <div class="form-group">
                            <strong>Horas evaluación:</strong>
                            {{ $schedule->evaluation_hours }}
                        </div>
                        <div class="form-group">
                            <strong>Cédula:</strong>
                            {{ ($schedule->teacher != "") ? $schedule->teachers->document : "" }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            {{ ($schedule->teacher != "") ? $schedule->teachers->name : "" }}
                        </div>
                        <div class="form-group">
                            <strong>Tipo vinculación:</strong>
                            {{ ($schedule->teacher != "") ? $schedule->teachers->contract_type : "" }}
                        </div>
                        <div class="form-group">
                            <strong>Área:</strong>
                            {{ $schedule->area->area_name }}
                        </div>
                        <div class="form-group">
                            <strong>Coordinador:</strong>
                            {{ $schedule->area->coordination_name }}
                        </div>
                        <div class="form-group">
                            <strong>Observaciones:</strong>
                            {{ $schedule->observations }}
                        </div>
                        <div class="form-group">
                            <strong>Status:</strong>
                            {{ $schedule->status }}
                        </div>
                        <div class="form-group">
                            <strong>Actualizado por:</strong>
                            {{ ($schedule->user->name) ?? "" }}
                        </div>
                        <div class="form-group">
                            <strong>Fecha actualización:</strong>
                            {{ ($schedule->updated_at) ?? "" }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
