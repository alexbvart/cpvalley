@extends('layout.plantilla')
@section('contenido')
<div class="container">
    <br>
    <div class="card">
        <div class="card-header">
            <h4><strong>Eliminar a {{$cliente->nombres}} 👨🏻‍🌾</strong></h4>
        </div>
        <div class="card-body">
            <p class="card-text">
                <p class="card-text">
                    <strong>Código: </strong> {{$cliente->cliente_id}} <br>
                    <strong>Ruc/dni: </strong> {{$cliente->ruc_dni}} <br>
                    <strong>Nombres/Razón: </strong> {{$cliente->nombres}}
                </p>
                <h5 class="card-title">¿Desea eliminar?</h5><br>
                <form action="{{route('clientes.destroy', $cliente->cliente_id)}}" method="POST">
                    @method('DELETE')
                    @csrf
                    <div class="mx-auto">
                        <button type="submit" class="btn btn-sm btn-danger">
                            <i class="fas fa-check-square pr-1"></i>
                             Si
                        </button>
                        <a href="{{route('clientes.index')}}" class="btn btn-sm btn-primary">
                            <i class="fas fa-times-circle pr-1"></i>
                             NO
                        </a>
                    </div>
                </form>
            </p>
        </div>
    </div>
</div>
@endsection