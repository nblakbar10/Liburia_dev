@extends('../layouts/maintwo')

<!-- konten -->
@section("content")
<!-- images -->
<div class="img">
    <img width="1300px" src="{{asset('img/tour.svg')}}" alt="">
</div>

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
<br>
<div class="container">
    <div class="row">
        <div class="col">
            <H2 class="tag4">Tentang Kota Ini</H2>
            <p class="wisatap"> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nemo odit, doloremque molestias aliquid ex saepe, eveniet praesentium voluptate illum quam cumque quo repellat? Architecto sunt quam dignissimos officiis nihil voluptatem!</p>
        </div>
    </div>
</div>


<div class="container">
    <h2 class="mydestinasi2">
        Destinasi Wisata di Kota Ini
    </h2>
    <div class="row favorite">
        <div class="col">
            <div class="wisata">
                <a href="/info">
                    <img src="{{asset('img/favorit.svg')}}" width="225" alt="">
                </a>
                <p>Pulau Derawan</p>
                <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>
                <p>Pulau Derawan | <i class="bi bi-star-fill">4.9 (5.3k reviews)</i></p>
                <p>Pulau Derawan</p>
                <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>
            </div>
        </div>

        <div class="col">
            <div class="wisata">
                <img src="{{asset('img/favorit.svg')}}" width="225" alt="">
                <p>Pulau Derawan</p>
                <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>

                <a href="/info">
                    <img src="{{asset('img/favorit.svg')}}" width="225" alt="">
                </a>
                <p>Pulau Derawan | <i class="bi bi-star-fill">4.9 (5.3k reviews)</i></p>

                <img src="{{asset('img/favorit.svg')}}" width="225" alt="">
                <p>Pulau Derawan</p>
                <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>

            </div>
        </div>

        <div class="col">
            <div class="wisata">
                <img src="{{asset('img/favorit.svg')}}" width="225" alt="">

                <p>Pulau Derawan</p>
                <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>

                <p>Pulau Derawan | <i class="bi bi-star-fill">4.9 (5.3k reviews)</i></p>

                <p>Pulau Derawan</p>
                <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>

            </div>
        </div>

        <div class="col">
            <div class="wisata">
                <img src="{{asset('img/favorit.svg')}}" width="225" alt="">

                <p>Pulau Derawan</p>
                <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>

                <p>Pulau Derawan | <i class="bi bi-star-fill">4.9 (5.3k reviews)</i></p>

                <p>Pulau Derawan</p>
                <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>

            </div>
        </div>
    </div>
</div>
@endsection