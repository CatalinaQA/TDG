<?php

use App\Imports\LoadPeriodsImport;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::resource('teachers', App\Http\Controllers\TeacherController::class)->middleware('auth');
Route::resource('faculties', App\Http\Controllers\FacultyController::class)->middleware('auth');
Route::resource('coordinations', App\Http\Controllers\CoordinationController::class)->middleware('auth');
Route::resource('programs', App\Http\Controllers\ProgramController::class)->middleware('auth');
Route::resource('areas', App\Http\Controllers\AreaController::class)->middleware('auth');
Route::resource('subjects', App\Http\Controllers\SubjectController::class)->middleware('auth');
Route::resource('schedules', App\Http\Controllers\ScheduleController::class)->middleware('auth');
Route::resource('users', App\Http\Controllers\UserController::class)->middleware('auth');


Route::get('load-periods',[App\Http\Controllers\LoadPeriodController::class, 'index'])->name('load-periods.index')->middleware('auth');
Route::get('load-periods/create',[App\Http\Controllers\LoadPeriodController::class, 'create'])->name('load-periods.create')->middleware('auth');
Route::post('load-periods',[App\Http\Controllers\LoadPeriodController::class, 'store'])->name('load-periods.store')->middleware('auth');

Route::get('payrolls',[App\Http\Controllers\TeacherController::class, 'payroll'])->name('teachers.payroll')->middleware('auth');
Route::get('timetables',[App\Http\Controllers\TeacherController::class, 'timetable'])->name('teachers.timetable')->middleware('auth');

Route::get('change_password', [App\Http\Controllers\Auth\RegisterController::class, 'changePassword'])->name('auth.change_password')->middleware('auth');
Route::post('save_password', [App\Http\Controllers\Auth\RegisterController::class, 'savePassword'])->name('auth.save_password')->middleware('auth');


Route::get('/getCoordinations/{faculty_id}',[App\Http\Controllers\CoordinationController::class, 'getCoordinations'])->middleware('auth');
Route::get('/getPrograms/{coordination_id}/faculty_id/{faculty_id}',[App\Http\Controllers\ProgramController::class, 'getPrograms'])->middleware('auth');
Route::get('/getAreas/{coordination_id}/faculty_id/{faculty_id}/program_id/{program_id}',[App\Http\Controllers\AreaController::class, 'getAreas'])->middleware('auth');

Route::post('import', function () {
    Excel::import(new LoadPeriodsImport, request()->file('file'));
    return redirect()->back()->with('success','Data Imported Successfully');
})->middleware('auth');

Route::post('answers', [App\Http\Controllers\ScheduleController::class, 'answer'])->name('schedules.answer')->middleware('auth');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
