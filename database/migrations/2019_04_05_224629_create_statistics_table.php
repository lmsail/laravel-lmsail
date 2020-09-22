<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStatisticsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('statistics', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->comment('用户id');
            $table->integer('praise')->default(0)->comment('累计点赞数');
            $table->integer('view')->default(0)->comment('累计浏览数');
            $table->integer('blognums')->default(0)->comment('累计发表文章数');
            $table->integer('fans')->default(0)->comment('累计粉丝数');
            $table->integer('collection')->default(0)->comment('累计收藏数');
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
        Schema::dropIfExists('statistics');
    }
}
