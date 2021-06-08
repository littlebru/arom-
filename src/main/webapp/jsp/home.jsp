<%@page contentType="text/html" pageEncoding="UTF-8" %>

   <!DOCTYPE html>
   <html lang='pt-br'>
    <head>
        <meta charset="utf-8">
        <title>arome - anotar suas receitas ficou fácil</title>
         <link rel="stylesheet" href="${pageContext.request.contextPath}../style/menu.css" />
    </head>

    <body>
    <nav>
          <ul>
            <li><a href="/arome">Home</a></li>
            <li>
                <a href="./receitas">Receitas</a>
                <ul>
                  <li><a href="./cadastrarReceitas">Cadastrar novo</a></li>
                  <li><a href="./receitas">Visualizar todas</a></li>
                </ul>
              </li>
            <li>
              <a href="./ingredientes">Ingredientes</a>
            </li>
          </ul>
        </nav>

        <h1> Home</h1>
        <h3><%
            String nome = request.getAttribute("option");
            %>
        </h3>
        <div class="secao-logotipo" style="padding:'30'">
        <img src="./assets/image/logotipo.png" title="logo principal da arome">
        </div>

        <div class="card">
        <a href="./ingredientes">Ingredientes</a>
        <img src="./assets/image/logo-chef.png" title="logotipo para area de ingredientes">
        </div>

        <div class="card">
                <a href="./receitas">receitas</a>
                <img src="./assets/image/logo-ingredientes.png" title="lgotipo para a area de receitas">
                </div>
    </body>
   </html>