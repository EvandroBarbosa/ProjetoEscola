<%-- 
    Document   : matricula
    Created on : 12/09/2017, 14:42:39
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
        <title>Aluno</title>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.css"/>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Css/StyleHome.css"/>
        <script src="Css/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
        <script src="JavaScript/validaCpf.js" type="text/javascript"></script>
    </head>
    <body> 
        <div class="jumbotron">
            <header class="navbar-header">
                <div class="menuh">
                <hgroup>
                    <h1>Cadastro de Alunos</h1>                    
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
        
        <div class="container bg-info" >            
            <p class="text-capitalize">necessário preencher o Formulário abaixo!</p>
            <form method="POST" action='AlunoCtr' name="addAluno">
                <div class="form-group">
                    <label>Id:</label><br />
                    <input class="form-control input-lg" type="text" name="codigo" value="<c:out value="${obAluno.codigo}"/>" readonly/>
                </div>
                <div class="form-group">
                    <label for="nomec">Nome:</label><br />
                    <input class="form-control input-lg" type="text" name="nomeAluno" placeholder="Informe seu nome" value="<c:out value="${obAluno.nomeAluno}"/>" id="nomec" required/>
                </div>
                <div class="form-group">
                <label>CPF:</label><br />
                <input class="form-control input-lg" type="text" maxlength="11" onblur="javaScript: validarCPF()" placeholder="Informe seu cpf" name="cpfAluno"value="<c:out value="${obAluno.cpfAluno}"/>" required/>
                </div>
                <div class="form-group">
                <label>Data nascimento:</label><br />
                <input class="form-control" type="date" name="dataNascAluno" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${obAluno.dataNascAluno}"/>"/>
                </div>
                <div class="form-group">
                <label>Numero Matricula:</label><br />
                <input class="form-control input-lg" type="text" name="matriculaAluno" placeholder="Informe o numero da matricula" value="<c:out value="${obAluno.matriculaAluno}"/>"/>
                </div>
                <div class="form-group">
                <label>Sexo:</label><br />
                    <input type="radio" name="sexoAluno" value="M" ${obAluno.sexoAluno == valorSexo ? 'checked' : ''}/>Masculino
                    <input type="radio" name="sexoAluno" value="F" ${obAluno.sexoAluno != valorSexo ? 'checked' : ''}/>Feminino
                </div>
                <div class="form-group">
                <label>Endereço:</label><br />
                <input class="form-control input-lg" type="text" name="enderecoAluno" placeholder="Informe o endereço" value="<c:out value="${obAluno.enderecoAluno}"/>"/>
                </div>
                <div class="form-group">
                <label>Telefone:</label><br />
                <input class="form-control input-lg" type="text" name="telefoneAluno" placeholder="Informe o telefone " value="<c:out value="${obAluno.telefoneAluno}"/>"/>
                </div>

                <div class="btn">
                    <input class="btn-lg bg-primary" type="submit" value="Enviar" />
                    <input class="btn-lg bg-primary" type="reset" value="Cancelar" />
                </div>
            </form>
            <section class="col-md-4">
                <article>
                    
                </article>
            </section>           
            
        </div>
         <div>
            <footer class="panel-footer text-center">
                <p>Copyright &copy; 2017 Evandro Barbosa</p>
            </footer>
        </div>
    </body>
</html>
