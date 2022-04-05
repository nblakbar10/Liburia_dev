@extends('../layouts/halaman')

<!-- Konten -->
@section('content')
<!-- Jumbotron -->
<div class="container-one">
    <img src="{{asset('img/icon.svg')}}" class="rounded float-right" width="630px">
</div>
<div class="container">
    <div class="row">
        <div class="col">
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
                                    <a href="/destinasi">
                                        <div class="img-areaone"><img src="{{asset('img/destinasi1.svg')}}" alt=""></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-box">
                                    <a href="/destinasi">
                                        <div class="img-area"><img src="{{asset('img/destinasi2.svg')}}" alt=""></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-box">
                                    <a href="/destinasi">
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
                                    <a href="/destinasi">
                                        <div class="img-areaone"><img src="{{asset('img/destinasi4.svg')}}" alt=""></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-box">
                                    <a href="/destinasi">
                                        <div class="img-area"><img src="{{asset('img/destinasi5.svg')}}" alt=""></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="single-box">
                                    <a href="/destinasi">
                                        <div class="img-area"><img src="{{asset('img/destinasi6.svg')}}" alt="">
                                        </div>
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
                @foreach ($article as $a)
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <a class="artimg" href="">
                            <img src="{{asset('img/artikel1.svg')}}" class="card-img" alt="...">
                        </a>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">{{ $a ["title"]}}</h5>
                            <!-- <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Id necessitatibus iusto hic sapiente architecto facere debitis, tenetur provident vel sed voluptatum aperiam quasi ratione nemo placeat consequuntur maiores molestiae corporis.</p> -->
                        </div>
                    </div>
                </div>
                <br>
                @endforeach
            </div>
        </div>
    </div>
</div>
</div>

@endsection