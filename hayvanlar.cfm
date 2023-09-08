<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ali Baba</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .vertical-nav {
            width: 200px;
            background-color: #212529;
            position: fixed;
            top: 0;
            left: 0;
            height: 100vh;
            padding-top: 20px;
            color: #fff;
        }

        .vertical-nav a {
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            display: block;
            transition: background-color 0.3s;
        }

        .vertical-nav a:hover {
            background-color: #343a40;
        }

        .sub-nav {
            padding-left: 20px;
            display: none;
        }

        .vertical-nav .active .sub-nav {
            display: block;
        }

        .content {
            margin-left: 250px;
            padding: 15px;
        }

        .navbar {
            background-color: #fff;
            border-bottom: 1px solid #dee2e6;
            padding: 15px 0;
        }

        .navbar-nav .nav-item {
            margin-right: 15px;
        }

        .navbar-nav .nav-link {
            color: #333;
            transition: color 0.3s;
        }

        .navbar-nav .nav-link:hover {
            color: #007bff;
        }

        .dropdown-menu {
            border: none;
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.1);
        }

        .dropdown-item {
            color: #333;
            transition: background-color 0.3s;
        }

        .dropdown-item:hover {
            background-color: #f8f9fa;
        }

        #myPieChart {
            width: 700px;
            /* İstenilen genişlik */
            height: 700px;
            /* İstenilen yükseklik */
            margin: 0 auto;
            /* Ortala */
        }
    </style>
</head>

<body>
    <div class="vertical-nav">
        <a href="ciftlikindex.cfm">Anasayfa</a>
        <a href="hayvanlar.cfm">Hayvanlar</a>
    </div>
    <div class="content">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            İstatistikler <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="inekler.cfm">İnekler</a></li>
                            <li><a class="dropdown-item" href="koyunlar.cfm">Koyunlar</a></li>
                            <li><a class="dropdown-item" href="keciler.cfm">Keçiler</a></li>
                            <li><a class="dropdown-item" href="kopekler.cfm">Köpekler</a></li>
                            <li><a class="dropdown-item" href="kediler.cfm">Kediler</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Süt Grafikleri</h1>


         <div class="container mt-5">
                <div class="container">

                    <h2 class="text-center">
                        İnekler
                    </h2>

                    <cfset datasource = "workCubeDSN">
                    <cfquery name="getDatainek" datasource="workCubeDSN">
                        SELECT * FROM Inekler
                    </cfquery>
                    
                    
                
                    <cfset chartDatainek = []>
                    <cfloop query="getDatainek">
                        <cfset chartDatainek.append({ "label": HayvanAdi, "value": SutMiktari })>
                    </cfloop>
                    <cfset chartDataJSONinek = SerializeJSON(chartDatainek)>
                    
                    <div class="container mt-5">
                        <div class="container">
                            <div class="w-50 mx-auto mb-5 mt-4">
                            <canvas id="chartCanvas" width="400" height="300"></canvas>
                            </div>
                            <div class="w-75 mx-auto">
                            </div>            
                        </div>
                    </div>






                    <div class="container mt-5">
                <div class="container">

                    <h2 class="text-center">
                        Keçiler
                    </h2>

                    <cfset datasource = "workCubeDSN">
                    <cfquery name="getDatakeci" datasource="workCubeDSN">
                        SELECT * FROM Keciler
                    </cfquery>
                    
                    
                
                    <cfset chartDatakeci = []>
                    <cfloop query="getDatakeci">
                        <cfset chartDatakeci.append({ "label": HayvanAdi, "value": SutMiktari })>
                    </cfloop>
                    <cfset chartDataJSONkeci = SerializeJSON(chartDatakeci)>
                    
                    <div class="container mt-5">
                        <div class="container">
                            <div class="w-50 mx-auto mb-5 mt-4">
                            <canvas id="chartCanvaskeci" width="400" height="300"></canvas>
                            </div>
                            <div class="w-75 mx-auto">
                            </div>            
                        </div>
                    </div>


                    
                    <div class="container mt-5">
                <div class="container">

                    <h2 class="text-center">
                        Koyunlar
                    </h2>

                    <cfset datasource = "workCubeDSN">
                    <cfquery name="getDatakoyun" datasource="workCubeDSN">
                        SELECT * FROM Koyunlar
                    </cfquery>
                    
                    
                
                    <cfset chartDatakoyun = []>
                    <cfloop query="getDatakoyun">
                        <cfset chartDatakoyun.append({ "label": HayvanAdi, "value": SutMiktari })>
                    </cfloop>
                    <cfset chartDataJSONkoyun = SerializeJSON(chartDatakoyun)>
                    
                    <div class="container mt-5">
                        <div class="container">
                            <div class="w-50 mx-auto mb-5 mt-4">
                            <canvas id="chartCanvaskoyun" width="400" height="300"></canvas>
                            </div>
                            <div class="w-75 mx-auto">
                            </div>            
                        </div>
                    </div>



    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.0/chart.min.js"></script>
                    <script>
                        var chartDatainek = <cfoutput>#chartDataJSONinek#</cfoutput>;
                
                        var ctx = document.getElementById("chartCanvas").getContext("2d");
                        var myChart = new Chart(ctx, {
                            type: 'pie',
                            data: {
                                labels: chartDatainek.map(item => item.label),
                                datasets: [{
                                    label: 'Türüne Göre Bir Günde Üretilen Süt Miktarı',
                                    data: chartDatainek.map(item => item.value),
                                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                    borderColor: 'rgba(75, 192, 192, 1)',
                                    borderWidth: 1
                                }]
                            },
                        });
                    </script>
                    
                    <script>
                        var chartDatakeci = <cfoutput>#chartDataJSONkeci#</cfoutput>;
                
                        var ctxa = document.getElementById("chartCanvaskeci").getContext("2d");
                        var myChart = new Chart(ctxa, {
                            type: 'pie',
                            data: {
                                labels: chartDatakeci.map(item => item.label),
                                datasets: [{
                                    label: 'Türüne Göre Bir Günde Üretilen Süt Miktarı',
                                    data: chartDatakeci.map(item => item.value),
                                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                    borderColor: 'rgba(75, 192, 192, 1)',
                                    borderWidth: 1
                                }]
                            },
                        });
                    </script>

                        <script>
                        var chartDatakoyun = <cfoutput>#chartDataJSONkoyun#</cfoutput>;
                
                        var ctx = document.getElementById("chartCanvaskoyun").getContext("2d");
                        var myChart = new Chart(ctx, {
                            type: 'pie',
                            data: {
                                labels: chartDatakoyun.map(item => item.label),
                                datasets: [{
                                    label: 'Türüne Göre Bir Günde Üretilen Süt Miktarı',
                                    data: chartDatakoyun.map(item => item.value),
                                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                    borderColor: 'rgba(75, 192, 192, 1)',
                                    borderWidth: 1
                                }]
                            },
                        });
                    </script>


 <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous">
        </script>

    
</body>

</html>