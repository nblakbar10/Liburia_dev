@extends('../layouts/halaman')

<!-- Konten -->
@section('content')

<div class="container">
    <div class="row">
        <div class="col video">
            <video width="1000" height="500" controls muted>
                <source src="{{ asset('logo.svg')}}" type="">
            </video>
            <h5><i class="bi bi-geo-alt"></i>Balikpapan, Kalimantan Timur</h5>
            <i class="bi bi-star-fill">4.9 (5.3k reviews)</i>
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col informasi">
            <h2>Menikmati desiran angin laut dan deburan ombak pantai
                di Pantai Manggar Segara Sari</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Excepturi dolore, voluptatum ipsam enim rerum quibusdam assumenda cum explicabo eum reiciendis, impedit nobis ducimus ratione adipisci, est quasi asperiores. Nesciunt, quisquam.
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Expedita dicta harum sunt? Quisquam repellendus at vitae inventore alias maiores consequatur natus odio, consequuntur porro autem nostrum, vero debitis sint qui.
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veniam, consectetur hic doloribus ullam accusamus sed laborum consequuntur consequatur quisquam assumenda facilis, reiciendis repellat libero dolor, eum cum dolorum temporibus quasi?
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore itaque sint, temporibus ea aut id dolor obcaecati adipisci libero esse in, debitis nulla, vitae ipsam quae. Nostrum repellat ut quasi?
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, blanditiis! Aliquam officiis culpa ex fugit quod tempora accusamus ea iusto facere ullam, qui non sint laborum sit reiciendis! Fuga, repudiandae!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae eum, illum maxime, amet ut asperiores cupiditate quam dolorem fuga voluptates inventore omnis? Quae labore aliquid eaque tempore facere in assumenda!
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Expedita quibusdam beatae aperiam atque veniam quos id optio accusamus saepe quaerat, eius facere sed numquam delectus fuga iure qui a maxime!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim voluptate nulla culpa quasi aut libero at corporis amet, saepe ratione maxime, obcaecati quia, iusto provident dicta eum illo consectetur aliquid.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Non adipisci assumenda asperiores eligendi odit, quisquam quae labore accusantium magni? Nostrum animi quia dignissimos cumque a illo placeat quam ipsa eius?
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsa doloribus velit, aspernatur dolorum animi voluptates. Velit similique quis facilis quas laudantium tempora nesciunt minus, unde harum sunt culpa? Molestias, alias?
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam ea quasi ipsum asperiores. Mollitia natus laudantium ipsa culpa omnis officia doloremque maiores! Voluptas nam et eveniet! Architecto eligendi voluptatibus sunt.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo voluptas explicabo distinctio ab temporibus ex cum! Error natus porro aut repellat a totam, aperiam sequi laboriosam. Sint eius nam consequatur.
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Omnis fugit corrupti aspernatur. Repudiandae accusantium veniam quaerat officiis molestiae? Reprehenderit ex nobis saepe provident inventore deleniti magnam, aliquam quasi tempora adipisci.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit consequuntur in doloremque, deleniti autem laboriosam atque hic voluptate vero ex tempore iusto. Necessitatibus sapiente voluptas mollitia culpa aperiam ipsa natus.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem non totam ea voluptatum, sint laboriosam. Deserunt, consectetur recusandae obcaecati dolorum corporis magni minus quo. Perferendis perspiciatis eos dolorem libero ad?
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repudiandae omnis voluptatem amet repellat ea recusandae, dolores fuga accusamus, illo, ratione illum ipsam eligendi quis placeat quod quas vero! Labore, perspiciatis.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem labore a placeat, blanditiis facere eum, alias optio ullam accusamus fuga modi illum, cum dolorem rem deleniti est! Tempore, hic in.
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed reprehenderit, laudantium magnam inventore temporibus repudiandae consequuntur nostrum, consequatur blanditiis maiores est repellendus laboriosam quibusdam id ducimus eum. Autem, fuga quaerat.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis fugiat dolorem mollitia voluptatem eligendi magni illo consequatur, dolor ex soluta consectetur repellat provident. Non architecto quia corrupti ipsa commodi expedita.
            </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col jamoperasional">
            <h5>Jam Operasional</h5>
            <ul>
                <img src="{{ asset('img/jam.svg')}}" alt="">
                06.00 WITA - 18.00 WITA
            </ul>
        </div>

        <div class="col jamoperasional1">
            <h5>Akomodasi </h5>
            <ul>
                <img src="{{ asset('img/akomodasi.svg')}}" alt="">
                <img src="{{ asset('img/akomodasi1.svg')}}" alt="">
                <img src="{{ asset('img/akomodasi2.svg')}}" alt="">
                <img src="{{ asset('img/akomodasi3.svg')}}" alt="">
                <img src="{{ asset('img/akomodasi4.svg')}}" alt="">
                <img src="{{ asset('img/akomodasi5.svg')}}" alt="">
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col listtiket">
            <h5>Harga Tiket Masuk</h5>
            <ul>
                <img src="{{ asset('img/tiket.svg')}}" alt="">
                Rp. 10.000,00
            </ul>
            <ul>
                <img src="{{ asset('img/tiket2.svg')}}" alt="">
                Rp. 10.000,00
            </ul>
            <ul>
                <img src="{{ asset('img/tiket3.svg')}}" alt="">
                Rp. 10.000,00
            </ul>
        </div>

        <div class="col listtiket1">
            <h5>Jarak Dari Bandara</h5>
            <ul>
                <img src="{{ asset('img/tiket2.svg')}}" alt="">
                12KM
            </ul>
            <ul>
                <img src="{{ asset('img/tiket3.svg')}}" alt="">
                12KM
            </ul>
        </div>
    </div>
</div>

@endsection