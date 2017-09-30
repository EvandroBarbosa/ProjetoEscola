<%-- 
    Document   : historia
    Created on : 29/09/2017, 10:46:03
    Author     : Evandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Historia da Escola</title>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.css"/>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Css/bootstrap-3.3.7-dist/css/bootstrap.theme.min.css"/>
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
                    <h1 class="h1 ">História da Escola</h1>                    
                </hgroup>
                </div>                 
                <nav class="navbar-fixed-top">
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
                    </ul>
                </nav>
            </header>
        </div>
        <div class="col-sm-8" id="menu">
            <section class="col-md-9 table-bordered">
            
            <h3>Como Foi Que Começou a Escola</h3>
                <p>
                    A escola (do grego scholé, através do termo latino schola) 
                    é uma instituição concebida para o ensino de alunos sob a 
                    direção de professores.[1] A maioria dos países tem sistemas 
                    formais de educação, que geralmente são obrigatórios. Nestes 
                    sistemas, os estudantes progridem através de uma série de níveis 
                    escolares e sucessivos. Os nomes para esses níveis nas escolas
                    variam por país, mas geralmente incluem o ensino fundamental (
                    ensino básico) para crianças e o ensino médio (ensino secundário)
                    para os adolescentes que concluíram o fundamental.[2] Uma 
                    instituição onde o ensino superior é ensinado, é comumente 
                    chamada de faculdade ou universidade.
                </p>
                <p>
                    Além destas, os alunos também podem frequentar outras instituições 
                    escolares, antes e depois do ensino fundamental. A pré-escola 
                    fornece uma escolaridade básica para as crianças mais jovens. 
                    As profissionalizantes, faculdades ou seminários podem estar 
                    disponíveis antes, durante ou depois do ensino médio. A escola 
                    também pode ser dedicada a um campo particular, como uma escola 
                    de economia ou de música, por exemplo.
                </p>
                <p>

                    As escolas podem ser públicas ou particulares. Podem ser mistas,
                    femininas ou masculinas. Podem ser colégios de aplicação. Podem 
                    ser exclusivas para crianças com necessidades especiais. Podem 
                    ser escolas religiosas. Escolas para adultos incluem instituições 
                    de alfabetização, de treinamento corporativo, militar e escolas de negócios.
                </p>
            </section>
        </div>
        <div class="col-sm-12">
            <footer class="panel-footer text-center">
                <p>Copyright &copy; 2017 Evandro Barbosa</p>
            </footer>
        </div>
    </body>
</html>
