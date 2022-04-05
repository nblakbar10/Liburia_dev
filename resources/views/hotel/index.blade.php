@extends('../layouts/dashboard')

<!-- Konten -->
@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">List Hotel</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div class="col-sm-12 col-md-6">
            <div id="example1_filter" class="dataTables_filter">
                <i class="bi bi-search"></i>
                <label>
                    <input type="search" class="form-control form-control-sm" placeholder="Cari nama hotel . . ." aria-controls="example1">
                </label>
            </div>
        </div>

        <div class="row">
            <div class="tambah col ">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <i class="bi bi-plus"></i> Tambah
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>

                            <!-- body -->
                            <div class="modal-body">
                                <div class="input">
                                    <label for="">Nama Hotel</label>
                                    <br>
                                    <input type="text" placeholder="Nama Hotel . . . ">
                                </div>
                                <br>
                                <div class="input">
                                    <label for="">Alamat Hotel</label> <br>
                                    <br>
                                    <input type="text" placeholder="Alamat Hotel . . . ">
                                </div>
                                <br>
                                <div class="input">
                                    <label for=""> Kamar</label><br>
                                    <input type="text" placeholder="Jenis Kamar . . . ">
                                </div>
                                <br>
                            </div>
                            <br>
                                <div class="input">
                                    <label for=""> Foto/Video</label><br>
                                    <input type="text" placeholder="Foto/Video . . . ">
                                </div>
                                <br>
                            </div>
                            <br>
                            <br>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th style="width: 10px">#</th>
                    <th>Nama Hotel</th>
                    <th>Alamat Hotel</th>
                    <th>Jenis Kamar</th>
                    <th>Fasilitas</th>
                    <th>Foto/Video</th>
                    <th style="width: 100px;">Aksi</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1.</td>
                    <td>Jesyca Natalia</td>
                    <td>Medan</td>
                    <td>Medan</td>
                    <td>Medan</td>
                    <td>Medan</td>
                    <td>
                        <a href="" class="btn btn-warning btn-sm"><i class="fas fa-pencil-alt"></i> </a>
                        <form action="" class="d-inline">
                            @method('delete')
                            @csrf
                            <button class="btn btn-danger btn-sm">
                                <i class="fa fa-trash"></i>
                            </button>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- /.card-body -->
    <div class="card-footer clearfix">
        <ul class="pagination pagination-sm m-0 float-right">
            <li class="page-item"><a class="page-link" href="#">«</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">»</a></li>
        </ul>
    </div>
</div>

@endsection