
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html: charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />       
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Pagina Da Disciplina</title>
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
                    <h1>Cadastro das Disciplinas</h1>                    
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
                        <li><a href="secretaria.jsp">Secretaria</a></li>
                        <li><a href="fale-conosco.jsp">Fale Conosco</a></li>
                        <li><a href="TurmaCtr?action=inserir">Turma</a></li>
                    </ul>
                </nav>
            </header>
        </div>
        <div class="container bg-info" >

            <form method="POST" action='DisciplinaCtr' name="addDisc">
                <div class="form-group">
                    <label>ID</label>
                    <input class="form-control input-lg" type="text" name="codigo" value="<c:out value="${obDisc.codigo}"/> " readonly="readonly"/>
                </div>
                <div class="form-group">
                    <label>codigo Disciplina</label>
                    <input class="form-control input-lg" type="text" name="codigoDisc" maxlength="8" placeholder="Informe o codigo da disciplina" value="<c:out value="${obDisc.codigoDisc}"/>" required=""/>
                </div>
                <div class="form-group">
                    <label>Nome</label>
                    <input class="form-control input-lg" type="" name="nomeDisc" placeholder="Informe o nome da disciplina" value="<c:out value="${obDisc.nomeDisc}"/>" required=""/>
                </div>
                <div class="form-group">
                    <label>Data Cadastro</label>
                    <input class="form-control" type="date" name="dataCadastroDisc" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${obDisc.dataCadastroDisc}"/>" required=""/>
                </div>
                <div class="form-group">
                    <label>Carga Horária</label>
                    <input class="form-control input-lg" type="text" name="cargaHorariaDisc" placeholder="Informe a carga Horária" value="<c:out value="${obDisc.cargaHorariaDisc}"/>" required=""/>
                </div>
                <div class="form-group">
                    <label>Descrição</label>
                    <textarea class="form-control" rows="6"  name="descricaoDisc" placeholder="Descreva sobre a máteria" required=""><c:out value="${obDisc.descricaoDisc}"/></textarea>
                </div>
                <div class="form-group">
                    <label>Contéudo</label>
                    <textarea class="form-control" rows="6" name="conteudoDisc" placeholder="Informe o contéudo ministrado nessa materia" required=""><c:out value="${obDisc.conteudoDisc}"/></textarea>
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