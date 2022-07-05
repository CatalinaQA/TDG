<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Coordinations extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coordinations', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedBigInteger('faculty_id');
            $table->foreign('faculty_id')->references('id')->on('faculties');
            
            $table->string('coordination_name')->unique();
            
            $table->unsignedBigInteger('coordinator');
            $table->foreign('coordinator')->references('id')->on('users');
            
            $table->string('professional_phone');
            $table->string('coordination_auxiliar_name')->nullable();
            $table->string('coordination_auxiliar_email')->nullable();
            $table->string('coordination_auxiliar_phone')->nullable();
            $table->tinyInteger('status')->default(1);
            $table->timestamps();

            $table->unique(['faculty_id','coordination_name'], 'coordinations_unique');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('coordinations');
    }
}
