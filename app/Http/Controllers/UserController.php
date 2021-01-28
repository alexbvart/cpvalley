<?php

namespace App\Http\Controllers;

use App\Http\Requests\User as RequestsUser;
use App\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function __construct(){
        $this->middleware('guest', ['only' => 'showLogin']);
    }


    public function login(RequestsUser $request)
    {
 

        $data=request()->validate([
            'name'=>'required',
            'password'=>'required'
        ],
        [
            'name.required'=>'Ingrese Usuario',
            'password.required'=>'Ingrese contraseña',
        ]);

        if (Auth::attempt($data))
        {
            $con='OK';
        }  

        $name=$request->get('name');
        $query=User::where('name','=',$name)->get();

        
        if ($query->count()!=0)
        {
            $hashp=$query[0]->password;
            $password=$request->get('password');
            if (password_verify($password, $hashp))
            {
                return redirect('home');
            }
            else
            {
                return back()->withErrors(['password'=>'Contraseña no válida'])
                ->withInput(request(['name', 'password']));
            }
        }
        else
        {
            return back()->withErrors(['name'=>'Usuario no válido'])
            ->withInput(request(['name']));
        }
    }  


    public function showLogin(){
        return view('index');
    }
    
    public function logout(){
        Auth::logout();
        return redirect('/');
    }
}
