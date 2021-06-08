<%@page contentType="text/html" pageEncoding="UTF-8" %>

   <!DOCTYPE html>
   <html lang='pt-br'>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" src="../assets/style/menu.css">
        <title>arome - anotar suas receitas ficou fácil</title>
        <style>
        body {
          background: #F9F8FD;
          font-family: 'Lexend Exa', sans-serif,
        }

        nav {
          position: absolute;
          top: 15px;
          left: 50%;
          transform: translateX(-50%);
          display: inline-block;
          border: 2px solid #EBECF1;
          border-radius: 30px;
          animation: slide-in 1s ease-out;
        }

        ul {
          position: relative;
          display: flex;
          flex: 1 1 auto;
          margin: 0;
          padding: 0 30px;
          list-style-type: none;
          li:not(:last-child) {
            margin-right: 40px;
          }
          li {
            border: 2px solid transparent;
            border-radius: 5px;
            padding: 10px;
            transition: background 0.2s;
            a {
              color: #2375D8;
              text-decoration: none;
              text-transform: uppercase;
              transition: color 0.2s;
            }
            ul {
              visibility: hidden;
              opacity: 0;
              position: absolute;
              display: block;
              margin: 12px -12px;
              padding: 0;
              background: #F9F5ED;
              border-radius: 5px;
              transition: opacity 0.2s, visibility 0.2s;
              li {
                margin: -2px 0 0 -2px;
                width: calc(100% - 20px);
                line-height: 1.7;
                a {
                  color: #2375D8;
                }
              }
            }
            &:hover {
              a {
                 color: #5FE095;
              }
              ul {
                visibility: visible;
                opacity: 1;
                box-shadow: 0px 3px 5px 2px #EBECF1;
                li {
                  a {
                     color: #48B881;
                  }
                }
              }
            }
          }
        }

        @keyframes slide-in {
          0% {
            top: -50px;
          }
          40% {
            top: 20px;
          }
          70% {
            top: 10px;
          }
          100% {
            top: 15px;
          }
        }
        </style>
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