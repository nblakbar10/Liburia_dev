@extends('../layouts/dashboard')

<!-- Konten -->
@section('content')

<div class="container">
    <div class="row">
        <div class="col">
            <H2><b>Top 5 Tempat Wisata</b></H2>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col">
            <table width="600px" class="menu">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Nama Tempat</th>
                        <th scope="col">Gambar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>

                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>

                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry the Bird</td>
                        <td>Otto</td>
                    </tr>

                    <tr>
                        <th scope="row">4</th>
                        <td>Larry the Bird</td>
                        <td>Otto</td>
                    </tr>

                    <tr>
                        <th scope="row">5</th>
                        <td>Larry the Bird</td>
                        <td>Otto</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <br>
    <br>
    <div class="row">
        <div class="col1">
            <H2><b>Top 5 User</b></H2>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col">
            <table width="600px" class="menu">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Nama Tempat</th>
                        <th scope="col">Gambar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>

                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>

                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry the Bird</td>
                        <td>Otto</td>
                    </tr>

                    <tr>
                        <th scope="row">4</th>
                        <td>Larry the Bird</td>
                        <td>Otto</td>
                    </tr>

                    <tr>
                        <th scope="row">5</th>
                        <td>Larry the Bird</td>
                        <td>Otto</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <!-- DONUT CHART -->
                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">User Aplikasi</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <canvas id="donutChart" style="min-height: 150px; height: 150px; max-height: 150px; max-width: 100%;"></canvas>
                        </div>
                    </div>

                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">Akses Aplikasi</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <canvas id="pieChart" style="min-height: 150px; height: 150px; max-height: 150px; max-width: 100%;"></canvas>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    @endsection