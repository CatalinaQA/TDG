@extends('layouts.app')

@section('template_title')
    Docentes
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Docentes') }}
                            </span>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar docentes</b></span>
                        <form method="GET" action="{{ route('teachers.index') }}"  role="form">
                            @include('teacher.search_form')
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
                                        <th>Nombre</th>
										<th>Documento</th>
										<th>Email</th>
										<th>Número móvil</th>
										<th>Tipo de contrato</th>
										<th>Estado</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($teachers as $teacher)
                                        <tr>
                                            <td>{{ $teacher->name }}</td>
											<td>{{ $teacher->document }}</td>
											<td>{{ $teacher->email }}</td>
											<td>{{ $teacher->cellphone_number }}</td>
											<td>{{ $teacher->contract_type }}</td>
											<td>{{ ($teacher->status == 1) ? 'Activo' : 'Inactivo' }}</td>

                                            <td>
                                                <form action="{{ route('teachers.destroy',$teacher->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('teachers.show',$teacher->id) }}"><i class="fa fa-fw fa-eye"></i> Mostrar</a>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $teachers->links() !!}
            </div>
        </div>
    </div>
@endsection
