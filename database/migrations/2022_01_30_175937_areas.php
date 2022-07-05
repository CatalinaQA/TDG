<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Areas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('areas', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedBigInteger('faculty_id');
            $table->foreign('faculty_id')->references('id')->on('faculties');

            $table->unsignedBigInteger('coordination_id');
            $table->foreign('coordination_id')->references('id')->on('coordinations');

            $table->unsignedBigInteger('program_id');
            $table->foreign('program_id')->references('id')->on('programs');

            $table->string('area_name')->unique();
            
            $table->unsignedBigInteger('area_coordinator');
            $table->foreign('area_coordinator')->references('id')->on('users');

            $table->tinyInteger('status')->default(1);
            $table->timestamps();

            $table->unique(['faculty_id','coordination_id','program_id','area_name'], 'areas_unique');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('areas');
    }
}
