<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blog', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->comment('用户id');
            $table->integer('cate_id')->comment('所属分类');
            $table->string('title')->comment('文章标题');
            $table->longText('content')->comment('文章内容');
            $table->string('tags')->comment('文章标签');
            $table->integer('view')->default(0)->comment('查看数');
            $table->integer('praise')->default(0)->comment('点赞数');
            $table->integer('comment')->default(0)->comment('评论数');
            $table->integer('community_id')->default(0)->comment('同步社区，暂时未用');
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
        Schema::dropIfExists('blog');
    }
}
