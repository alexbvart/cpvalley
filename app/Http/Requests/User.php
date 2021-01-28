<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class User extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     * @return array
     */
    public function rules()
    {
        return [
            'name'      =>  'required|max:30',
            'password'  =>  'required|max:199'       
        ];
    }
    
    public function attributes()
    {
        return[
            'name'      =>  'nombre completo de usuario',
            'password'  =>  'contraseña' 
        ];
    }
    public function messages(){
        return[
            'name.required'=>'Ingrese el nombre completo de usuario',
            'password.required'=>'Ingrese su contraseña correctamente'
        ];
    }
    
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
