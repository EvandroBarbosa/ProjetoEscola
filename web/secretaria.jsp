<%-- 
    Document   : secretaria
    Created on : 19/09/2017, 16:01:14
    Author     : Evandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Secretaria</title>
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
                        <h1>Secretaria Escolar</h1>
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
        <div class="col-sm-8" id="menu">
            <section class="col-md-9 table-bordered">
                <h3><b>Secretária</b></h3>
                <p class="text-justify">
                    É o setor da escola responsável pelos serviços de secretaria que realiza 
                    todas as funções destinadas a manter os registros, os arquivos de documentação 
                    dos alunos e dos funcionários, além de comunicados e expedições para apoiar o 
                    desenvolvimento do processo escolar, dando valor legal a toda a documentação 
                    expedida com aval do Secretário responsável e da Direção da Escola.

                    Dentro de suas características, a Secretaria regula a admissão e a saída dos alunos e compõe os 
                    arquivos, os livros e os prontuários necessários para o devido funcionamento da escola.

                    A Secretaria organiza e mantém os arquivos de todos 
                    aqueles que já passaram pela escola, chamados de egressos,
                    assim como mantém os registros que se referem a todos os 
                    alunos e professores ativos na escola.
                    
                </p>
                    <article>
                        <figure>
                            <img src="Css/imagem/secretaria.png" />
                        </figure>
                    </article>
            </section>            
            
        </div>
        <div class="col-sm-12">
           <footer class="panel-footer text-center">
               <p>Copyright &copy; 2017 Evandro Barbosa</p>
           </footer>
        </div>
    </body>
</html>
