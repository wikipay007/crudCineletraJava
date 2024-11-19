<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <title>Cineletra</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter+Tight:ital,wght@0,100..900;1,100..900&display=swap');

        * {
            margin: 0;
            font-family: "Inter Tight", sans-serif;
            font-optical-sizing: auto;
            font-style: normal;
            color: aliceblue !important;
        }

        .container-sm {
            margin-top: 20px !important;
        }

        h1 {
            font-weight: 600;
        }

        .navbar-brand {
            width: 10%;
        }

        .navbar-brand img {
            width: 100%;
            height: auto;
        }

        .btn-group {
            margin-top: 30px !important;
        }

        .card {
            margin-top: 30px;
        }

        .bota {
            gap: 30px;
        }

        .central{
            display: flex !important;
            justify-content: center !important;
            align-items: center !important;
        }
        .imagemLogo{
            width: 50%;
            height: auto;
        }
        .imagemLogo img{
            width: 100%;
            object-fit: cover;

        }
    </style>
</head>


<body data-bs-theme="dark">
    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="index">
                <img src="img/logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
            </a>

            <!-- Links do menu -->
        </div>
    </nav>

    <div class="container-sm central">

    
    <div class="container-fluid central">
        <div class="col-md-6">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <strong class="d-inline-block mb-2 text-primary-emphasis">${funcionario.cargo}</</strong>
              <h3 class="mb-0">${funcionario.nome}</h3>
              <div class="mb-1 text-body-secondary">${funcionario.idade}</</div>
            </div>
            <div class="col-auto d-none d-lg-block imagemLogo">
              <img src="https://ec-aminhota.pt/wp-content/uploads/2015/05/perfil-sem-foto-220615.png" alt="">
            </div>
          </div>
          <a href="index"><button class="btn mx-auto btn-success w-25">Página inicial</button></a> 
        </div>
      </div>
</div>




</body>
</html>