<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ali Baba</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#kaydetBtn').on('click', function () {
                $('#kaydetForm').show();
            });
        });
        

    </script>
   

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

        /* Genel sayfa stili */
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        /* Tablo konteyner */
        .tablo-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: auto;
            margin-top: 50px;

        }

        /* Tablo stili */
        .hayvan-tablosu {
            border-collapse: collapse;
            width: 80%;
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            margin: 0 auto;
            /* Yatay hizalama */
            margin-top: 20px;
            /* Tablonun üst boşluğu */
            margin-bottom: 20px;
            /* Tablonun alt boşluğu */
        }

        /* Başlık hücreleri stili */
        .hayvan-tablosu th {
            background-color: #f2f2f2;
            text-align: left;
            padding: 12px 20px;
            color: #333333;
            font-weight: 600;
            text-transform: uppercase;
        }

        /* Veri hücreleri stili */
        .hayvan-tablosu td {
            border-bottom: 1px solid #dddddd;
            text-align: left;
            padding: 10px 20px;
            color: #666666;
        }

        /* Sıralı renkli arka plan */
        .hayvan-tablosu tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Fare üzerine gelince hücre rengi değişimi */
        .hayvan-tablosu tr:hover {
            background-color: #e9f5fe;
            transition: background-color 0.2s ease-in-out;
        }

        /* Genel form ve tablo stili */
        .kayit-form,
        .hayvan-tablosu {
            border-collapse: collapse;
            width: 80%;
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            margin: 20px auto;
        }

        /* Başlık hücreleri stili */
        .kayit-form th,
        .hayvan-tablosu th {
            background-color: #f2f2f2;
            text-align: left;
            padding: 12px 20px;
            color: #333333;
            font-weight: 600;
            text-transform: uppercase;
        }

        /* Veri hücreleri stili */
        .kayit-form td,
        .hayvan-tablosu td {
            border-bottom: 1px solid #dddddd;
            text-align: left;
            padding: 10px 20px;
            color: #666666;
        }

        /* Fare üzerine gelince hücre rengi değişimi */
        .kayit-form tr:hover,
        .hayvan-tablosu tr:hover {
            background-color: #e9f5fe;
            transition: background-color 0.2s ease-in-out;
        }

        /* Buton stil */
        #kaydetBtn,
        #ekleBtn {
            padding: 10px 20px;
            background-color: #3498db;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
        }

        #ekleBtn {
            background-color: #27ae60;
        }

        .silBtn {
            padding: 5px 10px;
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .kayit-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .content {
            padding-bottom: 50px;

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
                            Köpekler <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="hayvanlar.cfm">İstatistikler</a></li>
                            <li><a class="dropdown-item" href="koyunlar.cfm">Koyunlar</a></li>
                            <li><a class="dropdown-item" href="keciler.cfm">Keçiler</a></li>
                            <li><a class="dropdown-item" href="inekler.cfm">İnekler</a></li>
                            <li><a class="dropdown-item" href="kediler.cfm">Kediler</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <h1>Köpekler tablosu</h1>



        <button id="kaydetBtn">Kaydet</button>

        <div id="kaydetForm" style="display: none;">
            <form action="veritabanimportkopek.cfm" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="submitted" id="submitted" value="1">
                <div class="form-group mt-5">
                    <label for="dosya">Yüklemek İçin İmport Dosyası Seçin:</label>
                    <input type="file" class="form-control-file" name="dosya" id="dosya" accept=".xlsx" required>
                </div>
                <button type="submit" class="btn btn-primary mb-5">Dosya Yükle</button>
            </form>

            <form  action="kopekler.cfm" method="post">
                <input type="text" id="hayvanTuru" name="hayvanTuru" placeholder="Hayvan Türü" required>
                <input type="text" id="cinsAdi" name="cinsAdi" placeholder="Cins Adı" required>
                <input type="text" id="hayvanAdi" name="hayvanAdi" placeholder="Hayvan Adı" required>
                <input type="number" id="yemMiktari" name="yemMiktari" placeholder="Yem Miktarı (kg/gün)" required>
                <input type="date" name="tarih" name="tarih" value="<cfoutput>#DateFormat(now(), 'yyyy-mm-dd')#</cfoutput>">
                <button type="submit" class="btn btn-primary">Oluştur</button>
            </form>
        </div>

<cfif structKeyExists(form, "hayvanTuru") AND structKeyExists(form, "cinsAdi") AND structKeyExists(form, "hayvanAdi") AND structKeyExists(form, "yemMiktari")  AND structKeyExists(form, "tarih")>

<cfset hayvanTuru = form.hayvanTuru>
<cfset cinsAdi = form.cinsAdi>
<cfset hayvanAdi = form.hayvanAdi>
<cfset yemMiktari = form.yemMiktari>
<cfset tarih = form.tarih>

    <cfquery  datasource="workCubeDSN">
        INSERT INTO  Kopekler (HayvanTuru, CinsAdi, HayvanAdi, YemMiktari, MuayeneTarihi)
        VALUES (
            <cfqueryparam value="#hayvanTuru#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#cinsAdi#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#hayvanAdi#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#yemMiktari#" cfsqltype="cf_sql_integer">,
            <cfqueryparam value="#tarih#" cfsqltype="cf_sql_date">
        )
    </cfquery> 
</cfif>





        <cfquery name="getHayvanlar" datasource="workCubeDSN">
            SELECT * FROM Kopekler;
        </cfquery>


        <div style="overflow-x: auto;">
            <div class="tablo-container">
                <table id="hayvanTablosu" class="hayvan-tablosu" name="kayittablo">
                    <tr>
                        <th>Hayvan Türü</th>
                        <th>Cins Adı</th>
                        <th>Hayvan Adı</th>
                        <th>Yem Miktarı (kg/gün)</th>
                        <th>Muayene Tarih</th>
                        <th></th> <!-- Silme butonu için boş hücre -->
                    </tr>

                    <cfoutput query="getHayvanlar">
                        <tr>
                            <td>#HayvanTuru#</td>
                            <td>#CinsAdi#</td>
                            <td>#HayvanAdi#</td>
                            <td>#YemMiktari#</td>
                            <td>#DateFormat(MuayeneTarihi, 'yyyy-mm-dd')#</td>
                            <td><a href="kopekler.cfm?HayvanAdi=#HayvanAdi#"><button class="silBtn" onclick="refreshPage()">Sil</button></a></td>
                        </tr>
                    </cfoutput>
                    <!-- Diğer hayvanlar için de aynı yapıyı tekrarlayabilirsiniz -->
                </table>
            </div>
        </div>


        <cfparam name="url.HayvanAdi" default="">
<cfif url.HayvanAdi neq "">
    <cfquery name="qDelete" datasource="workCubeDSN">
        DELETE FROM Kopekler WHERE HayvanAdi = <cfqueryparam value="#url.HayvanAdi#" cfsqltype="cf_sql_varchar">
    </cfquery>
</cfif>



    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <script>
        $(document).ready(function () {
            $('.nav-link.has-sub').click(function () {
                $('.sub-nav').removeClass('active');
                $(this).next('.sub-nav').toggleClass('active');
            });
        });
    </script>

    <script>
    function refreshPage() {
        location.reload();
    }
    </script>

</body>

</html>