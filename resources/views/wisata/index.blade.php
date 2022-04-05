@extends('../layouts/dashboard')

<!-- Konten -->
@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">List Tempat Wisata</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div class="col-sm-12 col-md-6">
            <div id="user1_filter" class="dataTables_filter">
                <i class="bi bi-search"></i>
                <label>
                    <input type="search" class="form-control form-control-sm" placeholder="Cari nama tempat wisata . . ." aria-controls="user1">
                </label>
            </div>
        </div>

        <div class="row">
            <div class="tambah col ">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#userModal">
                    <i class="bi bi-plus"></i> Tambah
                </button>

                <!-- Modal -->
                <div class="modal fade" id="userModal" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="userModalLabel">Tambah Data</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form action="{{ route('wisata.store') }}" method="POST" id="form-tambah-wisata" enctype="multipart/form-data" >
                                @csrf
                                @method('POST')   
                                <div class="modal-body">
                                    <div class="input">
                                        <label for="">Nama Tempat Wisata</label>
                                        <br>
                                        <input type="text" class="form-control" id="nama_wisata" name="nama_wisata" placeholder="Nama Tempat Wisata">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for="">Alamat</label>
                                        <br>
                                        <input type="text" class="form-control" id="alamat_wisata" name="alamat_wisata" placeholder="Alamat">
                                    </div>
                                    <br>
                                    
                                    <div class="input">
                                        <label for="">Foto</label>
                                        <br>
                                        <input type="file" class="form-control" id="foto" name="foto">
                                    </div>
                                    <br>

                                    <div class="input">
                                        <label for="">Fasilitas</label><br>
                                        <input type="text" class="form-control" id="fasilitas_wisata" name="fasilitas_wisata" placeholder="Fasilitas">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for="">Harga</label><br>
                                        <input type="text" class="form-control" id="harga" name="harga_wisata" placeholder="Harga">
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
                <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>

                            <!-- body -->
                            <!-- <form method=”POST” action=”/user/store”>
                            @csrf -->
                            <form method="POST" id="form-edit-wisata" enctype="multipart/form-data" >
                                @csrf
                                @method('PUT')   
                                <div class="modal-body">
                                    <div class="input">
                                        <label for="">Nama Tempat Wisata</label>
                                        <br>
                                        <input type="text" class="form-control" id="nama_wisata-edit" name="nama_wisata" placeholder="Nama Tempat Wisata">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for="">Alamat</label>
                                        <br>
                                        <input type="text" class="form-control" id="alamat_wisata-edit" name="alamat_wisata" placeholder="Alamat">
                                    </div>
                                    <br>
                                    
                                    <div class="input">
                                        <label for="">Foto</label>
                                        <br>
                                        <input type="file" class="form-control" id="foto-edit" name="foto">
                                    </div>
                                    <br>

                                    <div class="input">
                                        <label for="">Fasilitas</label><br>
                                        <input type="text" class="form-control" id="fasilitas_wisata-edit" name="fasilitas_wisata" placeholder="Fasilitas">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for="">Harga</label><br>
                                        <input type="text" class="form-control" id="harga_wisata-edit" name="harga_wisata" placeholder="Harga">
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
            </div>
        </div>

        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th style="width: 10px">ID</th>
                    <th>Nama Tempat Wisata</th>
                    <th>Alamat</th>   
                    <th>Fasilitas</th>
                    <th>Harga Tiket</th>
                    <th>List Bundling Tiket</th>
                    <th>Foto</th>
                    <th style="width: 95px">Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($wisatas as $wis)
                <tr>
                    <td>{{$wis->id}}</td>
                    <td>{{$wis->nama_wisata}}</td>
                    <td>{{$wis->alamat_wisata}}</td>
                    <td>{{$wis->fasilitas_wisata}}</td>
                    <td>{{$wis->harga_wisata}}</td>
                    <td>
                        <!-- Button trigger modal -->
                        @foreach ($bundling as $data)
                            @if($wis->id == $data->tempat_wisata_id)
                            <ul>
                                <li>{{$data->nama_bundling}}</li>
                                
                                <li>Detail Bundling</li>
                                {{$data->detail_bundling}}
                                <li>Harga Bundling</li>
                                {{$data->harga_bundling}}
                            </ul>
                            @endif
                        @endforeach
                    </td>
                    <!-- <td>{{$wis->foto}}</td> -->
                    <td>
                        <!-- Button trigger modal -->
                        <button style="width:95px" type="button" class="btn btn-primary btn-show-foto" data-bs-toggle="modal" data-bs-target="#exampleModal1" data-foto="{{asset('storage/wisata/' .$wis->foto)}}">
                            <i class="bi bi-file-earmark-text"></i>
                            Detail
                        </button>
                    
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModal1Label" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModal1Label">Foto Wisata</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        
                                    </div>
                                    <div class="model-body p-4">
                                        <h2>{{$wis->foto}}</h2>
                                        <img alt="{{$wis->foto}}" width='50%' height='50%' id="fotonya">
                                        
                                    </div>

                                    <!-- body -->
                                    <div class="modal-body">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <a class="btn btn-warning btn-sm m-1 btn-edit-wisata" type="submit" value="edit" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                        data-link="{{ route('wisata.update', $wis->id) }}" 
                        data-nama_wisata="{{$wis->nama_wisata}}"
                        data-alamat_wisata="{{$wis->alamat_wisata}}"
                        data-fasilitas_wisata="{{$wis->fasilitas_wisata}}"
                        data-harga_wisata="{{$wis->harga_wisata}}" >
                            <i class="fas fa-pencil-alt"></i>
                        </a>

                        <form action="{{ route('wisata.destroy', $wis->id) }}" method="post">
                        @csrf    
                        @method('delete')
                            <button class="btn btn-danger btn-sm m-1" type="submit" value="delete" onclick="return confirm('Apakah anda yakin untuk menghapus tempat wisata ini ?');">
                                <i class="fa fa-trash"></i>
                            </button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
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
    $(document).on('click', '.btn-edit-wisata', function(event) {
            var nama_wisata = $(this).data('nama_wisata');
            var alamat_wisata = $(this).data('alamat_wisata');
            var fasilitas_wisata = $(this).data('fasilitas_wisata');
            var harga_wisata = $(this).data('harga_wisata');

            $('#nama_wisata-edit').val(nama_wisata);
            $('#alamat_wisata-edit').val(alamat_wisata);
            $('#fasilitas_wisata-edit').val(fasilitas_wisata);
            $('#harga_wisata-edit').val(harga_wisata);
            console.log(nama_wisata);
        });

    $(document).on('click', '.btn-show-foto', function(event) {
        var foto = $(this).data('foto');

        $('#fotonya').attr("src", foto);
        console.log(foto);
    });
        
</script>
@endsection