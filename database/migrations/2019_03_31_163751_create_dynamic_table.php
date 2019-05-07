<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDynamicTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dynamic', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->comment('用户id');
            $table->string('content')->comment('动态内容');
            $table->integer('view')->default(0)->comment('查看数');
            $table->integer('praise')->default(0)->comment('点赞数');
            $table->integer('comment')->default(0)->comment('评论数');
            $table->tinyInteger('status')->default(1)->comment('状态 0：删除  2：违规  1：显示');
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
        Schema::dropIfExists('dynamic');
    }
}
