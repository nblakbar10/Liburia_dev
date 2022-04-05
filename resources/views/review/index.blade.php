@extends('../layouts/dashboard')

<!-- Konten -->
@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">List Review Wisata</h3>
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
               
            </div>
        </div>

        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th style="width: 10px">ID</th>
                    <th>User ID</th>
                    <th>Tempat Wisata ID</th>   
                    <th>Review</th>
                    <th>Rating</th>
                    <th>Verify Status</th>
                    <th style="width: 95px">Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($review as $rev)
                <tr>
                    <td>{{$rev->id}}</td>
                    <td>{{$rev->user_id}}</td>
                    <td>{{$rev->tempat_wisata_id}}</td>
                    <td>{{$rev->review}}</td>
                    <td>{{$rev->rating}}</td>
                    <!-- <td>{{$rev->foto}}</td> -->
                    
                    <td>{{$rev->verify_status}}</td>
                    <td>
                        @if($rev->verify_status == "BELUM DIVERIFIKASI ADMIN" or $rev->verify_status == null)
                            <a href="/confirm/{{$rev->id}}" type="submit" class="btn btn-warning btn-sm"><i class="fas fa-check"></i> </a>
                            <a href="/reject/{{$rev->id}}" type="submit" class="btn btn-danger btn-sm"><i class="fa fa-times"></i> </a>
                        @endif
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