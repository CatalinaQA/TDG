<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Programs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('programs', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedBigInteger('faculty_id');
            $table->foreign('faculty_id')->references('id')->on('faculties');

            $table->unsignedBigInteger('coordination_id');
            $table->foreign('coordination_id')->references('id')->on('coordinations');
            
            $table->string('program_name')->unique();
            $table->string('program_category');
            $table->string('snies_register');
            $table->string('program_phone');
            $table->tinyInteger('status')->default(1);
            $table->timestamps();

            $table->unique(['faculty_id','coordination_id','program_name'], 'programs_unique');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('programs');
    }
}
