 @extends('../layouts/main')

 <!-- Konten -->
 @section('content')
 <!-- Jumbotron -->
 <div class="container-one">
     <img src="{{asset('img/icon.svg')}}" class="rounded float-right" width="630px">
 </div>
 <div class="container">
     <div class="row">
         <div class="col ">
             <p class="myfont">Temukan </p>
             <p class="myfont1"><img src="{{asset('img/atribut.svg')}}" width="250"></p>
             <br>
             <p class="myfont2"> cara baru untuk <br> berlibur !</p>
         </div>
     </div>
 </div>

 <div class="container">
     <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
         <ol class="carousel-indicators">
             <li class="virtu">
                 <a href="#" role="button">
                     <img class="three" src="{{asset('img/virtual.svg')}}" alt="">
                 </a>
             </li>
             <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
             <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
             <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
         </ol>
         <div class="carousel-inner">
             <div class="carousel-item active">
                 <img src="{{asset('img/img1.svg')}}" class="d-block w-100" alt="...">
             </div>
             <div class="carousel-item">
                 <img src="{{asset('img/img2.svg')}}" class="d-block w-100" alt="...">
             </div>
             <div class="carousel-item">
                 <img src="{{asset('img/img1.svg')}}" class="d-block w-100" alt="...">
             </div>
         </div>
         <div class="imgasset">
             <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                 <img class="one" src="{{asset('img/left.svg')}}" aria-hidden="true" alt="">
                 <span class="sr-only">Previous</span>
             </a>
             <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                 <img class="two" src="{{asset('img/right.svg')}}" aria-hidden="true" alt="">
                 <span class="sr-only">Next</span>
             </a>
         </div>
     </div>
 </div>

 <div class="container">
     <div class="row">
         <div class="col-md-12">
             <B>
                 <p class="mydestinasi">Destinasi</p>
             </B>
             <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                 <ol class="carousel-indicators">
                     <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                 </ol>
                 <div class="carousel-inner">
                     <div class="carousel-item active">
                         <div class="row">
                             <div class="col-md-4">
                                 <div class="single-box">
                                     <a href="/login">
                                         <div class="img-areaone"><img src="{{asset('img/destinasi1.svg')}}" alt=""></div>
                                     </a>
                                 </div>
                             </div>
                             <div class="col-md-4">
                                 <div class="single-box">
                                     <a href="/login">
                                         <div class="img-area"><img src="{{asset('img/destinasi2.svg')}}" alt=""></div>
                                     </a>
                                 </div>
                             </div>
                             <div class="col-md-4">
                                 <div class="single-box">
                                     <a href="/login">
                                         <div class="img-area"><img src="{{asset('img/destinasi3.svg')}}" alt=""></div>
                                     </a>
                                 </div>
                             </div>
                         </div>
                     </div>

                     <div class="carousel-item">
                         <div class="row">
                             <div class="col-md-4">
                                 <div class="single-box">
                                     <a href="/login">
                                         <div class="img-areaone"><img src="{{asset('img/destinasi4.svg')}}" alt=""></div>
                                     </a>
                                 </div>
                             </div>
                             <div class="col-md-4">
                                 <div class="single-box">
                                     <a href="/login">
                                         <div class="img-area"><img src="{{asset('img/destinasi5.svg')}}" alt=""></div>
                                     </a>
                                 </div>
                             </div>
                             <div class="col-md-4">
                                 <div class="single-box">
                                     <a href="/login">
                                         <div class="img-area"><img src="{{asset('img/destinasi6.svg')}}" alt=""></div>
                                     </a>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <div class="row">
         <div class="col-md-12">
             <b>
                 <p class="myartikel">Artikel</p>
             </b>
             <div class="card" style="max-width: 1110px;">
                 <div class="row no-gutters">
                     <div class="col-md-4">
                         <a class="artimg" href="">
                             <img src="{{asset('img/manggar.jpg')}}" class="card-img" alt="...">
                         </a>
                     </div>
                     <div class="col-md-8">
                         <div class="card-body">
                             <h5 class="card-title">Pantai Manggar Segarasari, Wisata Bahari Favorit di Balikpapan</h5>
                             <p class="card-text">Wisata pantai merupakan salah satu destinasi liburan yang tidak ada matinya, dan masih terus menjadi favorit bagi banyak orang. Salah satu pantai di Balikpapan yang juga amat populer didatangi para wisatawan yaitu Pantai Manggar Segarasari. Wisata bahari ini merupakan wisata andalan Balikpapan yang telah dikelola oleh pemerintah kota.</p>
                         </div>
                     </div>
                 </div>
                 <div class="row no-gutters">
                     <div class="col-md-4">
                         <a class="artimg" href="">
                             <img src="{{asset('img/kebun.jpg')}}" class="card-img" alt="...">
                         </a>
                     </div>
                     <div class="col-md-8">
                         <div class="card-body">
                             <h5 class="card-title">Kebun Raya Balikpapan, Wisata Edukasi Terbaik di Kalimantan</h5>
                             <p class="card-text">Banyak yang bilang perjalanan ke Balikpapan membosankan, hanya disuguhi pepohonan rimbun khas Kalimantan. Tapi siapa sangka di tengah padatnya kota, terdapat wisata hijau yang menarik. Namanya Kebun Raya Balikpapan, tempat wisata yang dibangun untuk melepas jenuh. Meskipun tempatnya dekat kota, namun tempat ini sungguh asri.</p>
                         </div>
                     </div>
                 </div>
                 <div class="row no-gutters">
                     <div class="col-md-4">
                         <a class="artimg" href="">
                             <img src="{{asset('img/bukit.jpg')}}" class="card-img" alt="...">
                         </a>
                     </div>
                     <div class="col-md-8">
                         <div class="card-body">
                             <h5 class="card-title">Bukit Kebo di Balikpapan Utara, Destinasi Wisata Baru yang Bisa Hasilkan PAD</h5>
                             <p class="card-text">Bukit Kebo yang terletak di Kelurahan Graha Indah, Balikpapan Utara berpotensi sebagai destinasi wisata baru yang banyak dikunjungi wisatawan lokal dikarenakan pemandangan yang indah nan mempesona.</p>
                         </div>
                     </div>
                 </div>
                 <br>
             </div>
         </div>
     </div>
 </div>
 </div>

 @endsection