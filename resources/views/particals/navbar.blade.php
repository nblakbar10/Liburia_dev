    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <a class="navbar-brand" href="#">
            <img src="{{asset('img/logo.svg')}}" alt="">
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item1 ">
                    <a class="nav-link {{ Request::is('/') ? 'active' : '' }}" href="/">Beranda<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item1">
                    <a class="nav-link" href="#">Tentang</a>
                </li>
                <li class="nav-item1">
                    <a class="nav-link" href="#">Kontak</a>
                </li>
                <li class="nav-item1">
                    <a class="nav-link {{ Request::is('download') ? 'active' : '' }}" href="/download">Download</a>
                </li>

                @auth
                <li class="nav-item dropdown">
                    <div class="dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            | Selamat datang! {{ auth()->user()->fullname }}
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-sidebar-reverse"></i> My Dashboard</a>

                            <form action="/logout" method="POST">
                                @csrf
                                <button type="submit" class="dropdown-item">
                                    <i class="bi bi-box-arrow-right"></i> Keluar</a>
                                </button>
                            </form>

                        </div>
                    </div>
                </li>

                @else
                <li class="nav-item4">
                    <a class="nav-link4" href="/login">Masuk</a>
                </li>
                @endauth
            </ul>

        </div>
    </nav>