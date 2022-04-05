@extends('../layouts/dashboard')

<!-- Konten -->
@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">Input Artikel</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <form action="" method="POST">
            <div class="form-group">
                Judul :
                <input type="text" placeholder="Judul artikel . . . ">
            </div>
            <div class="form-group">
                Gambar :
                <input type="file" placeholder="Upload gambar . . . ">
            </div>
            <div class="form-group">
                Isi Artikel :
                <input type="text" placeholder="Isi artikel . . . ">
            </div>
            <div class="form-group">
                Tanggal Post :
                <input type="text" placeholder="Tanggal post . . .">
            </div>
            <div class="form-group">
                <button type="button" class="btn btn-primary">Simpan Data</button>
            </div>
        </form>
    </div>
</div>
@endsection