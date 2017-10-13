<%-- 
    Document   : turma
    Created on : 13/10/2017, 14:50:24
    Author     : Evandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <h1>Cadastro de Alunos</h1>                    
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
        <div>
            <form method="POST" action="TurmaCtr" name="criaTurma">
                <label>Id</label><input type="" id="" name="" value="" readonly="" />
                <label>Nome Aluno</label><input type="" id="" name="" value="" />
                <label>Periodo</label><input type="" id="" name="" value="" />
                <label>Classe</label><input type="" id="" name="" value="" />
            </form>
        </div>
        <div>
            <form method="GET" action="TurmaCtr" name="criaTabelaTurma">
                
            </form>
        </div>
        <div>
            <footer class="panel-footer text-center">
                <p>Copyright &copy; 2017 Evandro Barbosa</p>
            </footer>
        </div>
    </body>
</html>
