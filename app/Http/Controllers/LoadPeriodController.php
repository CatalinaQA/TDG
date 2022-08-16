<?php

namespace App\Http\Controllers;

use App\Models\LoadPeriod;
use App\Models\Schedule;
use App\Imports\LoadPeriodsImport;
use Illuminate\Http\Request;

/**
 * Class LoadPeriodController
 * @package App\Http\Controllers
 */
class LoadPeriodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $loadPeriods = LoadPeriod::paginate();

        return view('load-period.index', compact('loadPeriods'))
            ->with('i', (request()->input('page', 1) - 1) * $loadPeriods->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $loadPeriod = new LoadPeriod();
        return view('load-period.create', compact('loadPeriod'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(LoadPeriod::$rules);

        $loadPeriod = LoadPeriod::create($request->all());
        /*
        import cvs file and make it into an array then load into schedule model
        $csv = array_map('str_getcsv', file(request()->file('file')));



        */

        return redirect()->route('load-periods.index')
            ->with('success', 'LoadPeriod created successfully.');

    }
}
