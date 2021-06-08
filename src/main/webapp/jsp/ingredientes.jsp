<%@page contentType="text/html" pageEncoding="UTF-8" %>
   <!DOCTYPE html>
   <html lang='pt-br'>
    <head>
        <meta charset="utf-8">
        <link href='./webapp/assets/style/menu.css' rel='stylesheet' type="text/css" >
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
                    </li>
                  </ul>
                </nav>

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