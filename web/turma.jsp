<%-- 
    Document   : turma
    Created on : 13/10/2017, 14:50:24
    Author     : Evandro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Turna</title>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.css"/>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.theme.min.css"/>
        <link rel="stylesheet" href="Css/StyleHome.css"/>        
        <script src="Css/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
        <script src="https:ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
    </head>
    <body>
        <div class="jumbotron">
            <header class="navbar-header">
                <div class="menuh">
                <hgroup>
                    <h1>Cadastro da Turma</h1>                    
                </hgroup>
                </div>
                 <nav class="navbar-fixed-top" >
                    <p>Escola CONHECIMENTOÉAQUI</p>
                    <ul class="list-inline ">
                        <li><a  href="index.jsp">Home</a></li>                        
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            Cadastre-se Aqui <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">                            
                           <li><a href="AlunoCtr?action=listaAluno">Alunos</a></li>
                            <li><a href="DisciplinaCtr?action=listaDisciplina">Disciplinas</a></li>
                            <li><a href="FuncionarioCtr?action=listaFuncionario">Funcionários</a></li>
                        </ul>                            
                        </li>
                        <li><a href="historia.jsp">História</a></li>
                        <li><a href="secretaria.jsp">Scretaria</a></li>
                        <li><a href="fale-conosco.jsp">Fale Conosco</a></li>
                        <li><a href="TurmaCtr?action=inserir">Turma</a></li>
                    </ul>
                 </nav>
            </header>
          
        </div>
        <div class="container">
             <p class="text-capitalize">necessário preencher o Formulário abaixo!</p>
            <form method="POST" action="TurmaCtr" name="criarTurma">                   
                <div class="form-group">                    
                <label for="id">Id</label><input class="form-control input-lg" type="text" id="id" name="codigo" value="<c:out value="${turma.codigo}"/>" readonly="" />
                </div>               
                <div class="form-group">                    
                <label>Nome Aluno</label>
                <select class="form-control input-lg" name="codAluno">
                    <c:forEach items="${alunos}" var="alturma">
                        <option value="<c:out value="${alturma.codigo}"/>"
                                ${alturma.codigo == turma.aluno.codigo ? 'selected' : ''}>
                            <c:out value="${alturma.nomeAluno}"/>
                        </option>
                    </c:forEach>
                </select>
                </div>
                <div class="form-group">                    
                <label for="pedidoC">Periodo</label><input class="form-control input-lg" type="text" id="pedidoC" name="periodo" value="<c:out value="${turma.periodo}"/>" />
                </div>
                <div class="form-group">                    
                <label for="idturma">Classe</label><input class="form-control input-lg" type="text" id="idturma" name="idTurma" value="<c:out value="${turma.idTurma}"/>" />
                </div>
               
                <input class="btn-lg bg-primary" type="submit" value="Enviar" />
            </form>
                <br />
            <form method="GET" action="TurmaCtr" name="criaTabelaTurma">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome do Aluno</th>
                            <th>Periódo</th>
                            <th>Classe</th>
                            <th colspan="2">Atualizar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${turmas}" var="listTurma">
                            <tr>
                                <td><c:out value="${listTurma.codigo}" /></td>                                
                                <td><c:out value="${listTurma.aluno.nomeAluno}" /></td>                                
                                <td><c:out value="${listTurma.periodo}" /></td>                                
                                <td><c:out value="${listTurma.idTurma}" /></td>                                
                                <td><a class="btn btn-success" href="TurmaCtr?action=alterar&codigo=<c:out value="${listTurma.codigo}" />"><span class="glyphicon glyphicon-edit">Editar</span></a></td>                                                           
                                <td><a class="btn btn-danger" href="TurmaCtr?action=delete&codigo=<c:out value="${listTurma.codigo}" />"><span class="glyphicon glyphicon-trash">Excluir</span></a></td>                                                           
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </form>
        </div><br />
       
        <div>
            <footer class="panel-footer text-center">
                <p>Copyright &copy; 2017 Evandro Barbosa</p>
            </footer>
        </div>
    </body>
</html>
