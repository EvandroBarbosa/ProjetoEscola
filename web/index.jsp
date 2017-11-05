<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Escola</title>
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
                    <h1 class="h1 ">Sejam Bem vindos</h1>
                    <p class="text-center text-capitalize ">Aqui o seu futuro é garantido</p>
                </hgroup>
                </div>                 
                <nav class="navbar-fixed-top" >
                    <p>Escola CONHECIMENTOÉAQUI</p>
                    <ul class="list-inline ">
                        <li><a  href="index.jsp"><span class="glyphicon glyphicon-home"></span></a></li>                        
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
        <div class="col-sm-12">
            <div class="col-sm-4">
                <section class="table-bordered afbt">
                    <h2>Alfabetização</h2>
                    <p class="text-justify">
                        A alfabetização ou literacia consiste 
                        no aprendizado do alfabeto e de sua 
                        utilização como código de comunicação.
                        De um modo mais abrangente, a alfabetização 
                        é definida como um processo no qual o indivíduo 
                        constrói a gramática e em suas variações,
                        sendo chamada de alfabetismo a capacidade de ler, 
                        compreender, e escrever textos, e operar números.
                        Esse processo não se resume apenas na aquisição 
                        dessas habilidades mecânicas (codificação e decodificação)
                        do ato de ler, mas na capacidade de interpretar, 
                        compreender, criticar, ressignificar e produzir conhecimento.
                    </p>
                    <article id="alfa">
                        <figure>
                            <img  class="img-responsive" src="Css/imagem/images.png" alt="Alfabetização"/>
                        </figure>
                    </article>
                </section>
            </div>
            <div class="col-sm-4">
                 <section class="table-bordered afbt">
                    <h2>Fundamental</h2>
                    <p class="text-justify">
                        A organização do ensino fundamental divide-o, na prática, 
                        em dois ciclos. O primeiro que corresponde aos primeiros 
                        cinco anos (chamados anos iniciais do ensino fundamental) 
                        é desenvolvido, usualmente, em classes com um único professor 
                        regente. O segundo ciclo corresponde aos anos finais, nos 
                        quais o trabalho pedagógico é desenvolvido por uma equipe 
                        docente de especialistas em diferentes disciplinas. Essa 
                        forma de organização do ensino fundamental remonta à antiga
                        divisão do ensino primário em relação ao primeiro ciclo do 
                        ensino secundário (ginasial).
                    </p>
                    <article id="funda">
                        <figure>
                            <img class="img-responsive" src="Css/imagem/funda.png" alt="Ensino fundamental"/>
                        </figure>
                    </article>
                </section>
            </div>
            <div class="col-sm-4">
                 <section class=" table-bordered afbt">
                    <h2>Ensino Médio</h2>
                    <p class="text-justify">
                        O ensino médio é um nível de ensino com características
                        diferentes conforme o país. Em muitos países, corresponde
                        à totalidade ou a parte do ensino secundário ministrado
                        a adolescentes com idades compreendidas entre os 10 e os
                        19 anos. Em outros países, contudo, pode corresponder a um 
                        nível de ensino pré-secundário ou pós-secundário.
                    </p>
                    <article id="medio">
                        <figure>
                            <img class="img-responsive" src="Css/imagem/logo_medio.png" alt="Ensino Médio"/>
                        </figure>
                    </article>
                </section>
            </div>
        </div>    
        <div class="col-sm-12">
            <footer class="panel-footer text-center">
                <p>Copyright &copy; 2017 Evandro Barbosa</p>
            </footer>
        </div>
    </body>
</html>
