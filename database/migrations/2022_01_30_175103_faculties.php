<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Faculties extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('faculties', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('faculty_name')->unique();
            
            $table->unsignedBigInteger('dean');
            $table->foreign('dean')->references('id')->on('users');
            
            $table->string('dean_phone');
            $table->string('faculty_auxiliar_name')->nullable();
            $table->string('faculty_auxiliar_email')->nullable();
            $table->string('faculty_auxiliar_phone')->nullable();
            $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('faculties');
    }
}
