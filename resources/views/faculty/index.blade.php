@extends('layouts.app')

@section('template_title')
    Facultades
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Facultades') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('faculties.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Agregar') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar facultad</b></span>
                        <form method="GET" action="{{ route('faculties.index') }}"  role="form">
                            @include('faculty.search_form')
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
										<th>Nombre decano</th>
										<th>Email decano</th>
										<th>Teléfono</th>
										<th>Nombre auxiliar</th>
										<th>Email auxiliar</th>
										<th>Teléfono auxiliar</th>
										<th>Estado</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($faculties as $faculty)
                                        <tr>
                                            <td>{{ $faculty->faculty_name }}</td>
											<td>{{ $faculty->user->name }}</td>
											<td>{{ $faculty->user->email }}</td>
											<td>{{ $faculty->dean_phone }}</td>
											<td>{{ $faculty->faculty_auxiliar_name }}</td>
											<td>{{ $faculty->faculty_auxiliar_email }}</td>
											<td>{{ $faculty->faculty_auxiliar_phone }}</td>
											<td>{{ ($faculty->status == 1) ? 'Activo' : 'Inactivo' }}</td>

                                            <td>
                                                <form action="{{ route('faculties.destroy',$faculty->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('faculties.show',$faculty->id) }}"><i class="fa fa-fw fa-eye"></i> Mostrar</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('faculties.edit',$faculty->id) }}"><i class="fa fa-fw fa-edit"></i> Editar</a>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $faculties->links() !!}
            </div>
        </div>
    </div>
@endsection
