<?php

namespace App\Http\Controllers;
use App\CabeceraVenta;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
    /*     return view('bienvenido'); */
        $venta=CabeceraVenta::where('estado','=','1')
            ->orderBy('venta_id', 'DESC')
            ->paginate(6);
        return view('ventas.index', compact('venta'));
    }
}
