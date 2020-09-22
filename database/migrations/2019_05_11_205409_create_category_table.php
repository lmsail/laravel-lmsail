<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('category', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->index()->comment('名称');
            $table->string('logo')->index()->comment('分类图标');
            $table->text('description')->nullable()->comment('描述');
            $table->integer('post_count')->default(0)->comment('文章数');
            $table->tinyInteger('cascade')->default(0)->index()->comment('归类=> 0:顶级分类');
            $table->integer('order')->default(50)->comment('排序');
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
        Schema::dropIfExists('categories');
    }
}
