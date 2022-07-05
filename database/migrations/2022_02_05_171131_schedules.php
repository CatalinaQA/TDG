<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Schedules extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schedules', function (Blueprint $table)
        {
            $table->bigIncrements('id');

            $table->unsignedBigInteger('subject_id');
            $table->foreign('subject_id')->references('id')->on('subjects');

            $table->unsignedBigInteger('program_id');
            $table->foreign('program_id')->references('id')->on('programs');

            $table->unsignedBigInteger('teacher')->nullable();
            $table->foreign('teacher')->references('id')->on('users');

            $table->unsignedBigInteger('area_id');
            $table->foreign('area_id')->references('id')->on('areas');

            $table->string('campus');
            $table->integer('group');
            $table->string('detail')->nullable();
            $table->enum('day', [1,2,3,4,5,6,7]);
            $table->string('start_hour', 2);
            $table->string('start_minute', 2)->default(0);
            $table->string('end_hour', 2);
            $table->string('end_minute', 2)->default(0);
            $table->string('classroom');
            $table->string('activity');
            $table->string('classroom_capacity');
            $table->string('scheduled_capacity')->nullable();
            $table->integer('enrolled')->nullable();
            $table->integer('plan')->nullable();
            $table->float('total_hours');
            $table->integer('consultancies')->default(0);
            $table->integer('evaluation_hours')->default(0);
            $table->string('observations')->nullable();
            $table->string('offer');
            
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->foreign('updated_by')->references('id')->on('users');

            $table->string('status');

            $table->unsignedBigInteger('load_id');
            $table->foreign('load_id')->references('id')->on('load_periods');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('schedules');
    }
}
