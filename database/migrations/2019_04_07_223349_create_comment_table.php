<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comment', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('comment_id')->default(0)->comment('对应评论id');
            $table->integer('foreign_id')->comment('外键ID，对应博文或动态id');
            $table->integer('user_id')->comment('评论者uid');
            $table->integer('praise')->default(0)->comment('点赞数');
            $table->longText('content')->comment('评论内容');
            $table->integer('is_reply')->comment('是否为回复');
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
        Schema::dropIfExists('comment');
    }
}
