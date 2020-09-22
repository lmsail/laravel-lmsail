<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDynamicpraiseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dynamicpraise', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->comment('用户id，对应点赞人');
            $table->integer('foreign_id')->comment('外键ID，对应动态id');
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
        Schema::dropIfExists('dynamicpraise');
    }
}
