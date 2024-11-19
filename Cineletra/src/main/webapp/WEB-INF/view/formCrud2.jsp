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
        .container-sm{
            margin-top: 20px !important;
        }
        h1{
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
        .form{
          gap: 20px;
        }

    </style>
</head>
<body data-bs-theme="dark">
    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">
                <img src="img/logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
            </a>
            </div>
          </nav>
    

    <div class="container-sm d-flex justify-content-center flex-column">
        <div class="imagemLogo text-center">
            <img class="" src="img/logo.png" alt="">
        </div>
     <form action="salvarEdicao" method="POST">
    <input type="hidden" name="id" value="${funcionario.id}" />
    <div class="form container-sm d-flex justify-content-center">
        <div class="mb-3">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" class="form-control" id="nome" name="nome" value="${funcionario.nome}" placeholder="Nome">
        </div>
        <div class="mb-3">
            <label for="idade" class="form-label">Idade</label>
            <input type="text" class="form-control" id="idade" name="idade" value="${funcionario.idade}" placeholder="Idade">
        </div>
        <div class="mb-3">
            <label for="cargo" class="form-label">Cargo</label>
            <input type="text" class="form-control" id="cargo" name="cargo" value="${funcionario.cargo}" placeholder="Cargo">
        </div>
        <button type="submit" class="btn mx-auto btn-success w-25">Salvar</button>
    </div>
</form>
    </div>
    
   
        








    </div>
    

    
</body>
</html>