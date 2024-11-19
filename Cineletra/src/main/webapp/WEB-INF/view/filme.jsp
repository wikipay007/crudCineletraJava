<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filme</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');

        * {
            font-family: "Montserrat", system-ui;
            font-optical-sizing: auto;
            font-style: normal;
            margin: 0;
        }

        body {
            background-color: #14181C;
        }

        header {
            width: 100%;
            position: absolute;
            margin-top: 10px;
            font-weight: bold;
            z-index: 3;
        }

        header>ul {
            display: flex;
            justify-content: center;
            align-items: center;
            list-style: none;
            font-size: 15px;
            text-transform: uppercase;
        }

        li {
            margin: 10px;
            color: white;
        }

        input {
            border-radius: 5px;
            border: none;
            background-color: rgba(255, 255, 255, 0.312);
            height: 25px;
        }

        input::placeholder {
            color: white;
            padding: 5px;
        }

        body {
            width: 100%;
            background-color: #14181C;
            color: white;
        }

        main {
            width: 70%;
            margin-left: auto;
            margin-right: auto;
        }

        a {
            text-decoration: none;
        }

        .imgBanner {
            width: 100%;
            display: grid;
            justify-items: center;
            position: relative;
        }

        .imgBanner>img {
            width: 100%;
            object-fit: cover;
        }

        .imgBanner::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(ellipse at center, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.8) 100%);
            z-index: 1;
        }

        section {
            width: 70%;
            margin-top: 10px;
            display: flex;
            justify-content: center;
            margin-left: auto;
            margin-right: auto;
            position: relative;
            bottom: 90px;
            z-index: 4;
        }

        .textos {
            margin-left: 15px;
            width: 90%;
        }

        .card {
            width: 50%;
            height: auto;
            box-shadow: inset 0 0 1px #def;
        }

        .card>img {
            width: 100%;
            border-radius: 8px;
        }
    </style>
</head>

<body>
    <header>
        <ul>
            <a href="home"><li>Home</li></a>
            <li>Filmes</li>
            <li>Novo Filme</li>
            <input type="text" placeholder="Pesquise seu filme">
        </ul>
    </header>

    <main>
        <div class="imgBanner">
            <img src="img/comAmorRussia - Filme.jpeg" alt="">
        </div>
        <section>
            <div class="card">
                <div class="imagem-poster"></div>
                <img src="img/poster com amor russia.jpg" alt="">
            </div>
            <div class="textos">
                <div class="titulo">
                    <h1>${filme.nome}</h1>
                </div>
                <div class="categoria">
                    <p>${filme.categoria}</p>
                </div>
                <div class="ano">
                    <p>${filme.anoFilme}</p>
                </div>
                <div class="descricao">
                    <p>${filme.descricao}</p>
                </div>
            </div>
        </section>
         <a href="form?idFilme=${filme.id}"><button>Editar filmes</button></a>
         <a href="deletarFilme?idFilme=${filme.id}"><button>Deletar filmes</button></a>

        <div class="imagens">
            <img src="#" alt="#">
            <img src="#" alt="#">
        </div>

    </main>
</body>

</html>