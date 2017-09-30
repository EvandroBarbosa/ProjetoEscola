<%-- 
    Document   : listaFuncionario
    Created on : 15/09/2017, 14:27:35
    Author     : Evandro
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.css"/>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Css/StyleHome.css"/>
        <script src="Css/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    </head>
    <body>
        <div class="jumbotron">
            <header class="navbar-header">
                <div class="menuh">
                <hgroup>
                    <h1>Dados do Funcionário</h1>
                    
                </hgroup>
                </div>
                <nav class="navbar-fixed-top">
                    <ul class="list-inline ">
                        <li><a href="index.jsp">Home</a></li>                        
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
                    </ul>
                </nav>
            </header>
        </div>
        <div class="col-sm-12">
             <div class="container tabela">
                <table class="table table-hover">
                    <caption class="text-center">Informações dos Funcionários</caption>
                    <thead>
                        <tr>
                            <th class="text-center">ID</th>
                            <th class="text-center">Nome</th>
                            <th class="text-center">CPF</th>
                            <th class="text-center">Endereço</th>
                            <th class="text-center">Tipo</th>
                            <th class="text-center">Telefone</th>
                            <th class="text-center">E-mail</th>
                            <th class="text-center">Sexo</th>                            
                            <th class="text-center">Data Nascimento</th>                            
                            <th class="text-center" colspan="2">Atualizar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${obListFunc}" var="func">
                            <tr>
                                <td><c:out value="${func.codigo}" /></td>
                                <td><c:out value="${func.nomeFunc}" /></td>
                                <td><c:out value="${func.cpfFunc}" /></td>
                                <td><c:out value="${func.enderecoFunc}" /></td>
                                <td><c:out value="${func.tipoFunc}" /></td>
                                <td><c:out value="${func.telefoneFunc}" /></td>
                                <td><c:out value="${func.emailFunc}" /></td>
                                <td><c:out value="${func.sexoFunc}" /></td>
                                <td><fmt:formatDate pattern="MM/dd/yyyy" value="${func.dataNascFunc}" /></td>
                                <td><a class="btn btn-success" href="FuncionarioCtr?action=edit&codigo=<c:out value="${func.codigo}" />"><span class="glyphicon glyphicon-edit">Editar</span></a></td>
                                <td><a class="btn btn-danger" href="FuncionarioCtr?action=delete&codigo=<c:out value="${func.codigo}" />"><span class="glyphicon glyphicon-trash">Excluir</span></a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div>
                <p><a class="btn" href="FuncionarioCtr?action=incluir">Novo Funcionário</a></p>
            </div>              
         <div>
            <footer class="panel-footer text-center">
                <p>Copyright &copy; 2017 Evandro Barbosa</p>
            </footer>
        </div>
        </div>
    </body>
</html>
