<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html: charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Pagina Do Funcionário</title>
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
                    <h1>Cadastro de Funcionário</h1>
                    
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
            <p class="text-capitalize">necessário preencher o Formulário abaixo!</p>
            <form class="meuForm" method="POST" action='FuncionarioCtr' name="addFunc">
                <div class="form-group">
                    <label>Id:</label><br />
                    <input class="form-control input-lg" type="text" name="codigo" value="<c:out value="${obFunc.codigo}"/>" readonly/>
                </div>
                <div class="form-group">
                    <label for="nomec">Nome:</label><br />
                    <input class="form-control input-lg" type="text" name="nomeFunc" placeholder="Informe seu nome" value="<c:out value="${obFunc.nomeFunc}"/>" id="nomec" required/>
                </div>
                <div class="form-group">
                    <label for="cpf">CPF:</label><br />
                    <input class="form-control input-lg" id="cpf" onblur="return verificaCPF();" type="text" name="cpfFunc" maxlength="11" placeholder="Informe o cpf"value="<c:out value="${obFunc.cpfFunc}"/>" onkeypress='return SomenteNumero(event)' required=""/>
                </div>
                <div class="form-group">
                <label>Data nascimento:</label><br />
                <input class="form-control" type="date" name="dataNascFunc" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${obFunc.dataNascFunc}"/>" required=""/>
                </div>                
                <div class="form-group">
                <label>Sexo:</label><br />
                    <input type="radio" name="sexoFunc" value="M" ${obFunc.sexoFunc == valorSexo ? 'checked' : ''} />Masculino
                    <input type="radio" name="sexoFunc" value="F" ${obFunc.sexoFunc != valorSexo ? 'checked' : ''} />Feminino
                </div>
                <div class="form-group">
                <label>Tipo:</label><br />
                    <input type="radio" name="tipoFunc" value="true" ${obFunc.tipoFunc == valorTipo ? 'checked' : ''}/>Ativo
                    <input type="radio" name="tipoFunc" value="false" ${obFunc.tipoFunc != valorTipo ? 'checked' : ''}/>Não Ativo
                </div>
                <div class="form-group">
                    <label for="end">Endereço:</label><br />
                <input class="form-control input-lg" id="end" type="text" name="enderecoFunc" placeholder="Informe o endereço" value="<c:out value="${obFunc.enderecoFunc}"/>" required=""/>
                </div>
                <div class="form-group">
                    <label for="tele">Telefone:</label><br />
                <input class="form-control input-lg" id="tele" type="tel" name="telefoneFunc"maxlength="14" placeholder="Informe o telefone" value="<c:out value="${obFunc.telefoneFunc}"/>" onkeypress='return SomenteNumero(event)' required=""/>
                </div>
                <div class="form-group">
                    <label for="warning" >E-mail:</label><br />
                    <input class="form-control input-lg" type="email" name="emailFunc" placeholder="Informe o email" value="<c:out value="${obFunc.emailFunc}"/>" id="warning" required=""/>
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
