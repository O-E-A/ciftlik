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
  
    </style>
</head>

<body>
    <div class="vertical-nav">
        <a href="ciftlikindex.cfm">Anasayfa</a>
        <a href="hayvanlar.cfm">Hayvanlar</a>

    </div>
    <div class="content">
        <h1>Ali Baba’nın Çiftliği</h1>
        <p>Ali Baba’nın çiftliğinde inekleri, keçileri, koyunları, kedileri ve köpekleri var.
        Bu ciftliğin idaresini basitçe buradan yapmak istemektedir.</p>
            <div style="text-align: center;">
        <img src="resim\\ciftlik.jpg" style="display: inline-block;">
    </div>
  
    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>