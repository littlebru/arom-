<%@page contentType="text/html" pageEncoding="UTF-8" %>

   <!DOCTYPE html>
   <html lang='pt-br'>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" src="../assets/style/menu.css">
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
                  <ul>
                    <li><a href="./cadastrarIngrediente">Cadastrar novo</a></li>
                    <li><a href="./ingredientes">Visualizar todos</a></li>
                  </ul>
                </li>
              </ul>
            </nav>

            <h1> Receitas ja cadastradas</h1>

             <table id="receita" border="none" rules="none" frame="box" align="left" style="
                                   width: 100%;
                                   border-color: darkblue;
                                   margin-bottom: 20px;
                               ">
                               <thead>
                                   <tr>
                                       <th colspan="5" style="text-align:left;">
                                           <a id="titulo" style="font-size: 22px;">
                                               Bolo de banana
                                           </a>
                                       <td></td>
                                       <td></td>
                                       </th>
                                   </tr>
                               </thead>

                               <tbody>
                                    <tr style="color: #787373">
                                       <td>Tempo de Preparo:30min</td>
                                       <td>Rendimento (Porções): 20</td>
                                   </tr>

                                   <tr>
                                       <td id="verMais">
                                           <table>
                                               <tbody colspan="3">
                                                   <tr></tr>
                                                   <tr>
                                                       <th>Ingredientes</th>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <li>6 Unidades - Banana</li>
                                                           <li>50g - Farinha</li>
                                                           <li>3 Unidades - Ovo</li>
                                                           <li>1 Litros - Leite</li>
                                                       </td>
                                                   </tr>



                                                   <tr>
                                                       <th>Modo de Preparo</th>
                                                   </tr>
                                                   <tr></tr>
                                                   <tr>
                                                       <td rowspan="3">
                                                           Misture os ingredientes em uma batedeira, aqueça o forno em 250 graus
                                                           coloque para assar durante 20 min.
                                                       </td>
                                                   </tr>

                                               </tbody>
                                           </table>
                                       </td>
                                   </tr>
                               </tbody>
                           </table>

                           <!--
                           O último alimento cadastrado foi:
                           <span>
                               <%=request.getAttribute("nomeAlimento")%>
                           <span>
                           -->
    </body>
   </html>