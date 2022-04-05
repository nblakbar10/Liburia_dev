<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="shortcut icon" href="img/logo.svg" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}">
    <title>{{$title}} | Liburia</title>
</head>

<body>
    @include('particals.navbar')
    <br>

    <!-- Konten -->
    <div class="container">
        @yield('content')
    </div>

    <!-- Before Footer -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <img class="myfooter" src="{{asset('img/footer.svg')}}" alt="">
            </div>
        </div>
    </div>
    <!-- Footer -->
    <!-- Footer -->
    <div class="container">
        <div class="row judulawal">
            <div class="col-md-12">
                <b>
                    <h2 class="foot1">Byon</h2>
                    <p class="tagone">Be Your Vacation</p>
                </b>
            </div>
            <div class="col-md-12">
                <b>
                    <h2 class="foot2">Perusahaan</h2>
                    <p class="list2">Tentang <br> <br>
                        Karir <br> <br>
                        Mobile</p>
                </b>
            </div>
            <div class="col-md-12">
                <b>
                    <h2 class="foot">Kontak</h2>
                    <p class="list">Help <br> <br>
                        FAQ <br> <br>
                        Press</p>
                </b>
            </div>
        </div>
    </div>

    <div class="inifooter">
        <ul class="sosmed float-right">
            <li><i class="bi bi-instagram"></i></li>
            <li><i class="bi bi-facebook"></i></li>
            <li><i class="bi bi-twitter"></i></li>
        </ul>
        <h2 class="tagakhir float-right">Temukan Aplikasi Kami di</h2>
        <div class="tagakhir2 float-right">
            <a class="textplay" href="">
                <img src="{{asset('img/playstore.svg')}}" alt="">
                Play Store
            </a>
        </div>
        <div class="tagakhir3 float-right">
            <a class="textplay" href="">
                <img src="{{asset('img/appstore.svg')}}" alt="">
                App Store
            </a>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>

</html>