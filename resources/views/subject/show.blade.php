@extends('layouts.app')

@section('template_title')
    {{ $subject->name ?? 'Información Asignatura' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Información Asignatura</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('subjects.index') }}"> Atrás</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre facultad:</strong>
                            {{ $subject->faculty->faculty_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre coordinación:</strong>
                            {{ $subject->coordination->coordination_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre programa:</strong>
                            {{ $subject->program->program_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre area:</strong>
                            {{ $subject->area->area_name }}
                        </div>
                        <div class="form-group">
                            <strong>Código asignatura:</strong>
                            {{ $subject->subject_code }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre asignatura:</strong>
                            {{ $subject->subject_name }}
                        </div>
                        <div class="form-group">
                            <strong>Créditos asignatura:</strong>
                            {{ $subject->subject_credits }}
                        </div>
                        <div class="form-group">
                            <strong>Nivel asignatura:</strong>
                            {{ $subject->subject_level }}
                        </div>
                        <div class="form-group">
                            <strong>Código pre-requisito 1:</strong>
                            {{ $subject->prerequisite_code_1 }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre pre-requisito 1:</strong>
                            {{ $subject->prerequisite_name_1 }}
                        </div>
                        <div class="form-group">
                            <strong>Código pre-requisito 2:</strong>
                            {{ $subject->prerequisite_code_2 }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre pre-requisito 2:</strong>
                            {{ $subject->prerequisite_name_2 }}
                        </div>
                        <div class="form-group">
                            <strong>Código co-requisito 1:</strong>
                            {{ $subject->corequisite_code_1 }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre co-requisito 1:</strong>
                            {{ $subject->corequisite_name_1 }}
                        </div>
                        <div class="form-group">
                            <strong>Código co-requisito 2:</strong>
                            {{ $subject->corequisite_code_2 }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre co-requisito 2:</strong>
                            {{ $subject->corequisite_name_2 }}
                        </div>
                        <div class="form-group">
                            <strong>Estado:</strong>
                            {{ ($subject->status == 1) ? 'Activo' : 'Inactivo' }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
