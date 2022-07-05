@extends('layouts.app')

@section('template_title')
    {{ $user->name ?? 'Información usuario' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Información usuario</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('users.index') }}"> Atrás</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            {{ $user->name }}
                        </div>
                        <div class="form-group">
                            <strong>Email:</strong>
                            {{ $user->email }}
                        </div>
                        <div class="form-group">
                            <strong>Role:</strong>
                            {{ ucfirst($user->role) }}
                        </div>
                        <div class="form-group">
                            <strong>Documento:</strong>
                            {{ $user->document }}
                        </div>
                        <div class="form-group">
                            <strong>Celular:</strong>
                            {{ $user->cellphone_number }}
                        </div>
                        <div class="form-group">
                            <strong>Tipo de contrato:</strong>
                            {{ $user->contract_type }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
