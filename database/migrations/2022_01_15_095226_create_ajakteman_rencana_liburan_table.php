<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAjaktemanRencanaLiburanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ajakteman_rencana_liburan', function (Blueprint $table) {
            $table->id();
            $table->string('rencana_liburan_id');
            $table->string('body');
            $table->string('id_pengirim');
            $table->string('id_penerima');
            $table->string('status_ajakan');
            // $table->string('id_ajakan');
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
        Schema::dropIfExists('ajakteman_rencana_liburan');
    }
}
