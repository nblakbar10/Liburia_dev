@extends('../layouts/dashboard')

<!-- Konten -->
@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">List User</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div class="col-sm-12 col-md-6">
            <div id="example1_filter" class="dataTables_filter">
                <i class="bi bi-search"></i>
                <label>
                    <input type="search" class="form-control form-control-sm" placeholder="Cari nama user . . ." aria-controls="example1">
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
                            <form action="{{ route('user.store') }}" method="POST" id="form-tambah-user" enctype="multipart/form-data" >
                                @csrf
                                @method('POST')   
                                <div class="modal-body">
                                    <div class="input">
                                        <label for="">Fullname</label>
                                        <br>
                                        <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Fullname">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for="">Username</label>
                                        <br>
                                        <input type="text" class="form-control" id="username" name="username" placeholder="Username">
                                    </div>
                                    <br>
                                    
                                    <div class="input">
                                        <label for="">Photo</label>
                                        <br>
                                        <input type="file" class="form-control" id="photo" name="photo">
                                    </div>
                                    <br>

                                    <div class="input">
                                        <label for=""> Email </label><br>
                                        <input type="text" class="form-control" id="email" name="email" placeholder="Email">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for=""> Phone </label><br>
                                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for=""> Password </label><br>
                                        <input type="text" class="form-control" id="password" name="password" placeholder="Password">
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
                                <h5 class="modal-title" id="exampleModalLabel">Edit Data</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>

                            <!-- body -->
                            
                            <form method="POST" id="form-edit-user" enctype="multipart/form-data" >
                                @csrf
                                @method('PUT')   
                                <div class="modal-body">
                                    <div class="input">
                                        <label for="">Fullname</label>
                                        <br>
                                        <input type="text" class="form-control" id="fullname-edit" name="fullname" placeholder="Fullname">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for="">Username</label>
                                        <br>
                                        <input type="text" class="form-control" id="username-edit" name="username" placeholder="Username">
                                    </div>
                                    <br>
                                    
                                    <div class="input">
                                        <label for="">Photo</label>
                                        <br>
                                        <input type="file" class="form-control" id="photo-edit" name="photo">
                                    </div>
                                    <br>

                                    <div class="input">
                                        <label for=""> Email </label><br>
                                        <input type="text" class="form-control" id="email-edit" name="email" placeholder="Email">
                                    </div>
                                    <br>
                                    <div class="input">
                                        <label for=""> Phone </label><br>
                                        <input type="text" class="form-control" id="phone-edit" name="phone" placeholder="Phone">
                                    </div>
                                    <br>
                                    <!-- <div class="input">
                                        <label for=""> Password </label><br>
                                        <input type="text" class="form-control" id="password-edit" name="password" placeholder="Password">
                                    </div>
                                    <br> -->
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
                    <th>Username</th>
                    <th>Nama Lengkap</th>
                    <th>Email</th>
                    <th>No.Telepon</th>
                    <th>Foto/Video</th>
                    <th style="width: 95px">Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $us)
                <tr>
                    <td>{{$us->id}}</td>
                    <td>{{$us->username}}</td>
                    <td>{{$us->fullname}}</td>
                    <td>{{$us->email}}</td>
                    <td>{{$us->phone}}</td>
                    <!-- <td>{{$us->photo}}</td> -->
                    <td>
                        <!-- Button trigger modal -->
                        <button style="width:95px" type="button" class="btn btn-primary btn-show-photo" data-bs-toggle="modal" data-bs-target="#exampleModal1" data-photo="{{asset('storage/user/' .$us->photo)}}">
                            <i class="bi bi-file-earmark-text"></i>
                            Detail
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModal1Label" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModal1Label">Foto User</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        
                                    </div>
                                    <div class="model-body p-4">
                                        <img alt="{{$us->photo}}" width='50%' height='50%' id="fotonya">
                                        <!-- src="{{asset('storage/user/' .$us->photo)}}"  -->
                                        <!-- <img src="{{asset('storage/user/' .Auth::user()->profile_pic)}}" alt="{{$us->photo}}" width='50%' height='50%'> -->
                                    </div>

                                    <!-- body -->
                                    <div class="modal-body">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <a class="btn btn-warning btn-sm m-1 btn-edit-user" type="submit" value="edit" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                        data-link="{{ route('user.update', $us->id) }}" 
                        data-username="{{$us->username}}"
                        data-fullname="{{$us->fullname}}"
                        data-email="{{$us->email}}"
                        data-phone="{{$us->phone}}" >
                            <i class="fas fa-pencil-alt"></i>
                        </a>

                        <form action="{{ route('user.destroy', $us->id) }}" method="post">
                        @csrf    
                        @method('delete')
                            <button class="btn btn-danger btn-sm m-1" type="submit" value="delete" onclick="return confirm('Apakah anda yakin untuk menghapus user ini ?');">
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
    $(document).on('click', '.btn-edit-user', function(event) {
            var fullname = $(this).data('fullname');
            var username = $(this).data('username');
            var email = $(this).data('email');
            var phone = $(this).data('phone');

            $('#fullname-edit').val(fullname);
            $('#username-edit').val(username);
            $('#email-edit').val(email);
            $('#phone-edit').val(phone);
            console.log(username, $('#form-edit-user'));
        });

    $(document).on('click', '.btn-show-photo', function(event) {
        var photo = $(this).data('photo');

        $('#fotonya').attr("src", photo);
        console.log(photo);
    });
        
</script>

@endsection