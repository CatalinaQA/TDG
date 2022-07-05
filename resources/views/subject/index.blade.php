@extends('layouts.app')

@section('template_title')
    Asignaturas
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Asignaturas') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('subjects.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Agregar') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar asignaturas</b></span>
                        <form method="GET" action="{{ route('subjects.index') }}"  role="form">
                            @include('subject.search_form')
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
                                        <th>Nombre facultad</th>
										<th>Nombre coordinación</th>
										<th>Nombre programa</th>
										<th>Nombre area</th>
										<th>Código asignatura</th>
										<th>Nombre asignatura</th>
										<th>Créditos asignatura</th>
										<th>Nivel asignatura</th>
										<th>Código pre-requisito 1</th>
										<th>Nombre pre-requisito 1</th>
										<th>Código pre-requisito 2</th>
										<th>Nombre pre-requisito 2</th>
										<th>Código co-requisito 1</th>
										<th>Nombre co-requisito 1</th>
										<th>Código co-requisito 2</th>
										<th>Nombre co-requisito 2</th>
										<th>Estado</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($subjects as $subject)
                                        <tr>
                                            <td>{{ $subject->faculty->faculty_name }}</td>
											<td>{{ $subject->coordination->coordination_name }}</td>
											<td>{{ $subject->program->program_name }}</td>
											<td>{{ $subject->area->area_name }}</td>
											<td>{{ $subject->subject_code }}</td>
											<td>{{ $subject->subject_name }}</td>
											<td>{{ $subject->subject_credits }}</td>
											<td>{{ $subject->subject_level }}</td>
											<td>{{ $subject->prerequisite_code_1 }}</td>
											<td>{{ $subject->prerequisite_name_1 }}</td>
											<td>{{ $subject->prerequisite_code_2 }}</td>
											<td>{{ $subject->prerequisite_name_2 }}</td>
											<td>{{ $subject->corequisite_code_1 }}</td>
											<td>{{ $subject->corequisite_name_1 }}</td>
											<td>{{ $subject->corequisite_code_2 }}</td>
											<td>{{ $subject->corequisite_name_2 }}</td>
											<td>{{ ($subject->status == 1) ? 'Activo' : 'Inactivo' }}</td>

                                            <td>
                                                <a class="btn btn-sm btn-primary " href="{{ route('subjects.show',$subject->id) }}"><i class="fa fa-fw fa-eye"></i> Mostrtar</a>
                                                <a class="btn btn-sm btn-success" href="{{ route('subjects.edit',$subject->id) }}"><i class="fa fa-fw fa-edit"></i> Editar</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $subjects->links() !!}
            </div>
        </div>
    </div>
@endsection
