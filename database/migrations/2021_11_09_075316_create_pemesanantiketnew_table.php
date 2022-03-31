<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePemesanantiketnewTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pemesanan_tiketnew', function (Blueprint $table) {
            $table->id();
            $table->string('tanggal_pesan');
            $table->string('jumlah_pesan');
            $table->string('total_harga');
            $table->string('keterangan');
            $table->string('status');
            $table->string('user_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pemesanantiketnew');
    }
}
