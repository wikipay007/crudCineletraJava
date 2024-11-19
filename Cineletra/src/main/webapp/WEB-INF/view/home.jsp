<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
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
            z-index: 2;
        }

        header>ul {
            display: flex;
            justify-content: center;
            align-items: center;
            list-style: none;
            font-size: 20px;
            text-transform: uppercase;
        }

        li {
            margin: 10px;
            color: white;
        }
        a{
            text-decoration: none;
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

        .imgBanner {
            position: relative;
            display: grid;
            justify-items: center;
            width: 100%;
        }

        .imgBanner>img {
            width: 100%;
            object-fit: cover;
            border-radius: 0px 0px 10px 10px;
        }

        .logoFilme>img {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
            height: auto;
            width: 30%;
        }
        section{
            margin-top: 20px;
            width: 70%;
            margin-right: auto;
            margin-left: auto;
            display: flex;
        }
        .cards{
            width: 90%;
            height: 600px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        

        .card {
            width: 156px;
            height: 231px;
            background-color: aqua;
            margin: 0px 20px;
        }

        .card>img {
            width: 100%;
            object-fit: cover;
        }
        .list-button{
            width: 20%;
            display: flex;
            flex-direction: column;
            gap: 20px;
            align-items: stretch;
        }
        .list-button button{
                width: 90px;
                background-color: #ffd60a;
                border-radius: 4px;
                border: none;
                padding: 8px;
                cursor: pointer;
        }
        h2{
        	font-size: 70%;
        }
    </style>
</head>

<body>
    <header>
        <ul>
            <li>Entrar</li>
            <li>Criar conta</li>
            <li>FIlmes</li>
            <li>Novo Filme</li>
            <input type="text" placeholder="Pesquise seu filme">
        </ul>
    </header>
    <main>
        <div class="containerBanner">
            <div class="imgBanner">
                <img src="img/from-russia-with-love-1200-1200-675-675-crop-000000.jpg" alt="">
                <div class="logoFilme">
                    <img src="https://image.tmdb.org/t/p/original/sVecHTN1ivE61AOl3WRQ5UQcHbi.png" alt="">
                </div>
            </div>
        </div>


        <section>
             <div class="list-button">
                <a href="form.html"><button>Formulário</button></a>
                <a href="#"><button>Veja a lista dos filmes</button></a>
                <a href="#"><button>Editar filmes</button></a>
                <a href="index"><button>Usuários</button></a>
            </div>
            <div class="cards">
                <!--  card -->
                <!-- for {-->
                <c:forEach items="${filmes}" var="filme">
                
                <a href="filme?idFilme=${filme.id}">
                    <div class="card">
                        <img src="img/poster com amor russia.jpg" alt="imagemFilme">
                        <h2>${filme.nome}</h2>
                    </div>
                </a>
                
                </c:forEach>

            </div>

        </section>





    </main>

</body>

</html>