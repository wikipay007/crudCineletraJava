<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmes</title>
    <style>
        form{
            display: flex;
        }
    </style>
</head>
<body>
    <form method="POST" action="${filme.id != null ? 'atualizarFilme' : 'adicionarFilme' }?idFilme=${filme.id}">
        <div class="form-filme" >
            <label for="posterFilme">Poster filme</label>
            <input type="file" name="posterFilme" placeholder="Selecione a imagem"/>
        </div>
        <div>
            <label for="nomeFilme">Nome do Filme</label>
            <input value="${filme.nome}" type="text" name="nome">
        </div>
        <div>
            <label for="categorias">Categoria do filme</label>
            <input value="${filme.categoria}" type="text" name="categoria">
        </div>
        <div>
            <label for="anoFilme">Ano do filme</label>
            <input value="${filme.anoFilme}" type="text" name="anoFilme">
        </div>
        <div>
            <label for="anoFilme">Descricao</label>
            <input value="${filme.descricao}" type="text" name="descricao">
        </div>



        <button type="submit">Enviar</button>


    </form>
    
</body>
</html>