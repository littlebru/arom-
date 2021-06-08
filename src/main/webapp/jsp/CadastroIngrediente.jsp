<%@page contentType="text/html" pageEncoding="UTF-8" %>

   <!DOCTYPE html>
   <html lang='pt-br'>
    <head>
        <meta charset="utf-8">
        <link href='./webapp/assets/style/menu.css' rel='stylesheet' type="text/css" >
        <title>arome - anotar suas receitas ficou fácil</title>
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

        <div class="container">
            <scan class="info-ingrediente">

            </scan>
        </div>
                <!--
                <form method="get" action="escrevernome.action">
                -->
                <form  id="alimentos">
                    <h1>Cadastro de Alimentos</h1>

                    Alimento:
                    <input name="alimento" /><br />

                    Categoria:
                    <select name="categoria_alimento" id="categoria_alimento" form="carform">
                        <option value="fruta">Fruta</option>
                        <option value="legumes">Legume</option>
                        <option value="grao">Grão</option>
                        <option value="bebidas">Outro</option>
                        <option value="outro">Outro</option>
                    </select><br />

                    <input
                        type="submit"
                        style="
                            font-family: 'Kelly Slab';
                            color: #FFF;
                            background-color: #000;
                            border-color: #000;"
                    >
                </form>
    </body>
   </html>