@extends("../layouts/maintwo")

<!-- konten -->
@section("content")
<div class="container">
    <div class="row slider2">

        <div class="col">

            <div class="row">
                <img class="down" src="{{asset('img/download1.svg')}}" width="400px" alt="">
                <img class="kotak" src="{{asset('img/kotak.svg')}}" width="300px" alt="">
                <img class="down2" src="{{asset('img/teks1.svg')}}" width="600px" alt="">
            </div>
        </div>

        <div class="col">
            <div class="row">
                <img class="down" src="{{asset('img/down2.svg')}}" width="400px" alt="">
                <img class="kotak" src="{{asset('img/kotak.svg')}}" width="300px" alt="">
                <img class="down2" src="{{asset('img/teks2.svg')}}" width="600px" alt="">
            </div>
        </div>

        <div class="col">
            <div class="row">
                <img class="down" src="{{asset('img/d3.svg')}}" width="400px" alt="">
                <img class="kotak2" src="{{asset('img/kotak.svg')}}" width="300px" alt="">
                <img class="down3" src="{{asset('img/teks3.svg')}}" width="400px" alt="">
                <p class="parag">Dengan berbagai macam fitur seperti Virtual Tour 360
                    dengan tour guide yang terpercaya, Itinerary rencana
                    liburan kamu, Review tempat wisata impian kamu, dan
                    masih banyak lagi fitur menarik yang dapat membantu
                    liburan kamu.</p>
            </div>
        </div>
    </div>
</div>

@endsection