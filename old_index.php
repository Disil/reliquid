<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Reliquid Project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hero {
            position: relative;
            padding: 50px 0;
            color: white;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('assets/img/IMG_1279 (1).JPG');
            background-size: cover;
            background-position: center;
            filter: blur(8px) brightness(0.6);
            z-index: -1;
        }
    </style>
</head>
<body>
  <header><?php include 'parts/navbar.php'?></header>
  <main>
      <section class="hero">
          <div class="container">
              <div class="row align-items-center">
                  <div class="col-md-6">
                      <h1 class="display-4 bold">Reliquid Project</h1>
                      <p class="lead">Reliquid is a project that aims to share awareness about used cooking oil.</p>
                  </div>
                  <div class="col-md-6">
                      <img src="assets/img/PNG_Reliquid%20Logo.png" width="500px" height="500px"></div>
                  </div>
              </div>
          </div>
      </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </main>
</body>
</html>