@extends('../layouts/maintwo')

<!-- Konten -->
@section('content')
<!-- images -->
<div class="img">
    <img width="1300px" src="{{asset('img/tour.svg')}}" alt="">
</div>
<!-- Konten -->
<div class="container">
    <div class="row">
        <div class="col kontenatas">
            <h3 class="judul">Cari Tempat Wisatamu di <br> Kalimantan</h3>
            <p class="subjudul">Nikmati Indahnya Destinasi Wisata Alam</p>

            <form action="" method="GET">
                <input class="box" type="text" name="cari" placeholder="Cari ...">
                <input class="box2" type="submit" value="CARI">
            </form>
        </div>
    </div>
</div>

<br>

<div class="container">
    <h2 class="tag">Kota Favorit</h2>
    <br>
    <div class="row slider">
        @foreach ($tempatwisata as $tws)
        <div class="col-md-4">
            <div class="details">
                <a href="/infokota/{{$tws->id}}">
                    <img src="{{asset('img') /$tws->picture}}" width="200px" alt="">
                </a>
            </div>
        
        </div>
        @foreach

        <!-- <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kota.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kota.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kota.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kota.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kota.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kota.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kota.svg')}}" width="200px" alt="">
            </div>
        </div> -->
    </div>
</div>

<br>

<div class="container">
    <h2 class="mydestinasi1">
        Destinasi Wisata Favorite
    </h2>
    <div class="row favorite">
        <div class="col">
            <div class="wisata">
                <a href="/info">
                    <img src="{{asset('img/favorit.svg')}}" width="225" alt="">
                </a>
                <p>Pulau Derawan | <i class="bi bi-star-fill">4.9 (5.3k reviews)</i></p>
            </div>
        </div>

        <div class="col">
            <div class="wisata">
                <a href="/info">
                    <img src="{{asset('img/favorit.svg')}}" width="225" alt="">
                </a>
                <p>Pulau Derawan | <i class="bi bi-star-fill">4.9 (5.3k reviews)</i></p>
            </div>
        </div>

        <div class="col">
            <div class="wisata">
                <img src="{{asset('img/favorit.svg')}}" width="225" alt="">
                <p>Pulau Derawan | <i class="bi bi-star-fill">4.9 (5.3k reviews)</i></p>
            </div>
        </div>

        <div class="col">
            <div class="wisata">
                <img src="{{asset('img/favorit.svg')}}" width="225" alt="">
                <p>Pulau Derawan | <i class="bi bi-star-fill">4.9 (5.3k reviews)</i></p>
            </div>
        </div>
    </div>
</div>

<br>
<br>
<br>
<div class="container">
    <h2 class="tag2">Kota Lainnya</h2>
    <br>
    <div class="row kota">
        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kotalainnya.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kotalainnya.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kotalainnya.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kotalainnya.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kotalainnya.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kotalainnya.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kotalainnya.svg')}}" width="200px" alt="">
            </div>
        </div>

        <div class="col-md-4">
            <div class="details">
                <img src="{{asset('img/kotalainnya.svg')}}" width="200px" alt="">
            </div>
        </div>
    </div>
</div>

@endsection