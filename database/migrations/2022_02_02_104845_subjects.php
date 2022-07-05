<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Subjects extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subjects', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->unsignedBigInteger('faculty_id');
            $table->foreign('faculty_id')->references('id')->on('faculties');

            $table->unsignedBigInteger('coordination_id');
            $table->foreign('coordination_id')->references('id')->on('coordinations');

            $table->unsignedBigInteger('program_id');
            $table->foreign('program_id')->references('id')->on('programs');

            $table->unsignedBigInteger('area_id');
            $table->foreign('area_id')->references('id')->on('areas');

            $table->string('subject_code');
            $table->string('subject_name')->unique();
            $table->string('subject_credits');
            $table->string('subject_level');
            $table->string('prerequisite_code_1')->nullable();
            $table->string('prerequisite_name_1')->nullable();
            $table->string('prerequisite_code_2')->nullable();
            $table->string('prerequisite_name_2')->nullable();
            $table->string('corequisite_code_1')->nullable();
            $table->string('corequisite_name_1')->nullable();
            $table->string('corequisite_code_2')->nullable();
            $table->string('corequisite_name_2')->nullable();
            $table->tinyInteger('status')->default(1);
            $table->timestamps();

            $table->unique(['faculty_id','coordination_id','program_id','area_id','subject_name'], 'subjects_unique');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('subjects');
    }
}
