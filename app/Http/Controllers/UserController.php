<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

/**
 * Class UserController
 * @package App\Http\Controllers
 */
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $name = $request->get('name');
        $role = $request->get('role');

        $users = User::names($name)
                    ->roles($role)
                    ->paginate(10)
                    ->appends($request->all());

        return view('user.index', [
            'users' => $users,
            'request' => ["name" => $name, "role" => $role]
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);

        return view('user.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);

        return view('user.edit', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  User $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $rules = [
            'name'          => ['required', 'string', 'max:255'],
            'email'         => ['required', 'string', 'email', 'max:255', 'unique:users,email,' .  $user->id],
            'role'          => ['required', 'string'],
            'document'      => ['required', 'string', 'unique:users,document,' .  $user->id],
            'contract_type' => ['required_if:role,docente'],
        ];

        request()->validate($rules);

        $user->update($request->all());

        return redirect()->route('users.index')
            ->with('success', 'Usuario actualizado satisfactoriamente');
    }
}
