@extends('../layouts/dashboard')

<!-- Konten -->
@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">List Artikel</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div class="col-sm-12 col-md-6">
            <div id="example1_filter" class="dataTables_filter">
                <i class="bi bi-search"></i>
                <label>
                    <input type="search" class="form-control form-control-sm" placeholder="Cari nama artikel . . ." aria-controls="example1">
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
                            
                            <form action="{{ route('artikel.store') }}" method="POST" id="form-tambah-artikel" enctype="multipart/form-data" >
                                @csrf
                                @method('POST')   
                                <div class="modal-body">
                                    <div class="input">
                                        <label for="">Judul</label>
                                        <br>
                                        <input type="text" class="form-control" id="judul" name="judul" placeholder="Judul">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for="">Isi</label>
                                        <br>
                                        <input type="text" class="form-control" id="isi" name="isi" placeholder="Isi">
                                    </div>
                                    <br>
                                    
                                    <div class="input">
                                        <label for="">Foto</label>
                                        <br>
                                        <input type="file" class="form-control" id="photo" name="photo">
                                    </div>
                                    <br>
                                </div>
                                <br>
                                <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                 <!-- Modal -->
                 @foreach ($artikel as $at)
                 <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Edit Data</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form action="{{ route('artikel.update', $at->id) }}" method="POST" id="form-edit-artikel" enctype="multipart/form-data" >
                                @csrf
                                @method('PUT')   
                                <div class="modal-body">
                                    <div class="input">
                                        <label for="">Judul</label>
                                        <br>
                                        <input type="text" class="form-control" id="judul-edit" name="judul" placeholder="Judul">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for="">Isi</label>
                                        <br>
                                        <input type="text" class="form-control" id="isi-edit" name="isi" placeholder="Isi">
                                    </div>
                                    <br>
                                    
                                    <div class="input">
                                        <label for="">Foto</label>
                                        <br>
                                        <input type="file" class="form-control" id="photo-edit" name="photo">
                                    </div>
                                    <br>
                                </div>
                                <br>
                                <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>



    <br>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th style="width: 10px">No</th>
                <th>Judul Artikel</th>
                <th>Isi Artikel</th>
                <th>Foto Artikel</th>
                <th style="width: 100px;">Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($artikel as $at)
            <tr>
                <td>{{$at->id}}</td>
                <td>{{$at->judul}}</td>
                <td>{{$at->isi}}</td>
                <td>
                    <!-- Button trigger modal -->
                    <button style="width:95px" type="button" class="btn btn-primary btn-show-photo" data-bs-toggle="modal" data-bs-target="#exampleModal1" data-photo="{{asset('storage/artikel/' .$at->photo)}}">
                        <i class="bi bi-file-earmark-text"></i>
                        Detail
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModal1Label" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModal1Label">Foto Artikel</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    
                                </div>
                                <div class="model-body p-4">
                                    <img alt="{{$at->photo}}" width='50%' height='50%' id="fotonya">
                                </div>
                                <!-- body -->
                                <div class="modal-body">

                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <td>
                    <a class="btn btn-warning btn-sm m-1 btn-edit-artikel" type="submit" value="edit" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                    data-link="{{ route('artikel.update', $at->id) }}" 
                    data-judul="{{$at->judul}}"
                    data-isi="{{$at->isi}}"
                    data-foto="{{$at->photo}}" >
                        <i class="fas fa-pencil-alt"></i>
                    </a>

                    <form action="{{ route('artikel.destroy', $at->id) }}" method="post">
                    @csrf    
                    @method('delete')
                        <button class="btn btn-danger btn-sm m-1" type="submit" value="delete" onclick="return confirm('Apakah anda yakin untuk menghapus artikel ini ?');">
                            <i class="fa fa-trash"></i>
                        </button>
                    </form>
                </td>
            </tr>
            @endforeach
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


<script>
    $(document).on('click', '.btn-edit-artikel', function(event) {
            var judul = $(this).data('judul');
            var isi = $(this).data('isi');
            // var photo = $(this).data('photo');

            $('#judul-edit').val(judul);
            $('#isi-edit').val(isi);
            // $('#photo-edit').val(photo);
            console.log(judul, $('#form-edit-artikel'));
        });

    $(document).on('click', '.btn-show-photo', function(event) {
        var photo = $(this).data('photo');

        $('#fotonya').attr("src", photo);
        console.log(photo);
    });
        
</script>
@endsection