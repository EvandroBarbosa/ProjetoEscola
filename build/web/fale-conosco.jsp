<%-- 
    Document   : fale-conosco
    Created on : 26/09/2017, 15:20:05
    Author     : Evandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Contato</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />        
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
                    <h1 class="h1 ">Contatos</h1> 
                    <p class="text-center text-capitalize ">Entre em contato conosco</p>
                    <p class="text-center text-capitalize ">Telefone (62)993960999</p>
                    <p class="text-center text-capitalize ">E-mail: vandomarinho.vm@gmail.com</p>
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
            <form method="Post" action="#">
                <div class="form-group">
                   <label for="nomeC">Nome</label><br />
                   <input class="form-control input-lg" type="text" name="nome" id="nomeC" placeholder="Informe seu nome"/>
                </div>
                <div class="form-group">
                 <label for="pedidoC">Pedido</label><br />
                 <input class="form-control input-lg" type="text" name="pedido" id="pedidoC" placeholder="Deixe seu pedido"/>
                </div>
                <div class="form-group">
                 <label for="emailC">Email</label><br />
                 <input class="form-control input-lg" type="email" name="email" id="emailC" placeholder="Email usuário"/>
                </div>
                <div class="form-group">
                 <label for="desc">Descrição</label><br />
                 <textarea class="form-control" rows="6" name="descricao" id="desc" placeholder="Deixei sua mensagem"></textarea>
                </div>
                <hr>
                <div class="btn">
                    <input class="btn-lg bg-primary" type="submit" value="Enviar" />
                    <input class="btn-lg bg-primary" type="reset" value="Cancelar" />
                </div>
            </form>
        </div>
        <div class="col-sm-12">
            <footer class="panel-footer text-center">
                <p>Copyright &copy; 2017 Evandro Barbosa</p>
            </footer>
        </div>
    </body>
</html>
