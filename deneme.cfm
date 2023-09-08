<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            Bootstrap demo
        </title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous">
    </head>
    <body>
            <div class="container mt-5">
                <div class="container">

                    <h2 class="text-center">
                        Günlük Yem Harcamaları
                    </h2>

                    <!--- Pasta grafiği oluşturma --->
                    <cfset datasource = "workCubeDSN">
                    <cfquery name="getData" datasource="workCubeDSN">
                        SELECT * FROM Hayvanlar
                    </cfquery>
                    
                    
                
                    <cfset chartData = []>
                    <cfloop query="getData">
                        <cfset chartData.append({ "label": HayvanAdi, "value": SutMiktari })>
                    </cfloop>
                    <cfset chartDataJSON = SerializeJSON(chartData)>
                    
                    <div class="container mt-5">
                        <div class="container">
                            <div class="w-50 mx-auto mb-5 mt-4">
                            <canvas id="chartCanvas" width="400" height="300"></canvas>
                            </div>
                            <div class="w-75 mx-auto">
                            </div>            
                        </div>
                    </div>
                
                    
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.0/chart.min.js"></script>
                    <script>
                        var chartData = <cfoutput>#chartDataJSON#</cfoutput>;
                
                        var ctx = document.getElementById("chartCanvas").getContext("2d");
                        var myChart = new Chart(ctx, {
                            type: 'pie',
                            data: {
                                labels: chartData.map(item => item.label),
                                datasets: [{
                                    label: 'Türüne Göre Bir Günde Üretilen Süt Miktarı',
                                    data: chartData.map(item => item.value),
                                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                    borderColor: 'rgba(75, 192, 192, 1)',
                                    borderWidth: 1
                                }]
                            },
                        });
                    </script>



                </div>
                    <script
                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
                        crossorigin="anonymous">
                    </script>

                </body>
            </html>