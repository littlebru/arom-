<%@page contentType="text/html" pageEncoding="UTF-8" %>

   <!DOCTYPE html>
   <html lang='pt-br'>
    <head>
        <meta charset="utf-8">
        <link href='./webapp/assets/style/menu.css' rel='stylesheet' type="text/css" >
        <title>arome - anotar suas receitas ficou fácil</title>

        <style>
                    #customers {
                      font-family: Arial, Helvetica, sans-serif;
                      border-collapse: collapse;
                      width: 100%;
                    }

                    #customers td, #customers th {
                      border: 1px solid #ddd;
                      padding: 8px;
                    }

                    #customers tr:nth-child(even){background-color: #f2f2f2;}

                    #customers tr:hover {background-color: #ddd;}

                    #customers th {
                      padding-top: 12px;
                      padding-bottom: 12px;
                      text-align: left;
                      background-color: #4CAF50;
                      color: white;
                    }</style>
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
                  <ul>
                    <li><a href="./cadastrarIngrediente">Cadastrar novo</a></li>
                    <li><a href="./ingredientes">Visualizar todos</a></li>
                  </ul>
                </li>
              </ul>
            </nav>

            <h1> Ingredientes ja cadastrados</h1>
            <table id="customers">
              <tr>
                <th>Nome</th>
              </tr>
              <tr>
                <td>Banana</td>
              </tr>
              <tr>
                <td>Farinha</td>
              </tr>
              <tr>
                <td>Maracujá</td>
              </tr>
              <tr>
                <td>Ovo</td>
              </tr>
              <tr>
                <td>Leite</td>
              </tr>
              <tr>
                <td>açucar</td>
              </tr>
            </table>
    </body>
   </html>