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
    </style>
</head>


<body data-bs-theme="dark">
    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="home">
                <img src="img/logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
            </a>

            <!-- Links do menu -->
        </div>
    </nav>

    <div class="container-sm d-flex justify-content-center flex-column text-center">
        <h1>Painel de gerenciamento</h1>
        <h2>Cineletra</h2>
        <div>
            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a class="btn btn-success" href="formCrud"><button type="button" class="btn btn-success">Adicionar
                        usuário</button></a>
            </div>
        </div>
        
         <c:forEach items="${funcionarios}" var="funcionario">
        <div class="card mx-auto" style="width: 30rem;">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">
                    <div class="d-flex justify-content-center text-center bota align-items-center ">
                        <p>${funcionario.nome}</p>
                        <div>
                        <a href="deletarFuncionario?idfuncionario=${funcionario.id}"> <button class="btn btn-sm btn-danger" type="button">Deletar</button></a>
                           
                            <a href="editarFuncionario?id=${funcionario.id}"><button class="btn btn-sm btn-success "
                                    type="button">Editar</button></a>
                           <a href="funcionarios?idfuncionario=${funcionario.id}">
    <button class="btn btn-sm btn-primary" type="button">Vizualizar</button>
</a> 


                        </div>
                    </div>
                </li>
            </ul>
        </div>
        </c:forEach>

    </div>


</body>


</html>