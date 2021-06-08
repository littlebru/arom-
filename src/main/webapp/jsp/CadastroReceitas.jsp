<%@page contentType="text/html" pageEncoding="UTF-8" %>

   <!DOCTYPE html>
   <html lang='pt-br'>
    <head>
        <meta charset="utf-8">
        <link rel=stylesheet src=../assets/style/menu.css>
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

                <form id="receitas">
                                <h1>Cadastro de Receita</h1>

                                Título:
                                <input name="titulo_receita" /><br />

                                Tempo de preparo (min.):
                                <input name="tempo" type="time" /><br />

                                Porções:
                                <input type="number" id="quantidade" name="quantidade" min="1" max="50"><br />

                                Ingrediente:
                                <select name="ingrediente" id="ingrediente" form="receitas">
                                    <option value="agua">Farinha</option>
                                    <option >Morango</option>
                                    <option >Leite</option>
                                    <option >Gelo</option>
                                    <option >Banana</option>

                                </select><br />

                                Quantidade:
                                <input name="quantidade" /><br />

                                Medida:
                                <select name="medida" id="medida" form="receitas">
                                    <option value="unidade" title="unidade">Unidade(s)</option>
                                    <option value="colher" title="colher">Colher(es)</option>
                                    <option value="xicara" title="xícara">Xícara(s)</option>
                                    <option value="copo" title="copo">Copo(s)</option>
                                    <option value="grama" title="gramas">g</option>
                                    <option value="ml" title="mililitros">ml</option>
                                    <option value="kilo" title="quilogramas">Kg</option>
                                    <option value="litro" title="litro">L</option>
                                    <option value="aGosto" title="aGosto">A gosto</option>
                                </select><br />

                                <input
                                    type="submit"
                                    value="Adicionar Ingrediente"
                                    style="
                                        font-family: 'Kelly Slab';
                                        color: #FFF;
                                        background-color:darkblue;"
                                ><br/>

                                <div>Modo de Preparo</div>
                                <textarea
                                    id="preparo"
                                    placeholder="Escreva o passo a passo aqui..."
                                    name="preparo"
                                    rows="5"
                                    cols="70"
                                    style="
                                        resize: none;
                                        background-color: #C4C4C4;"
                                ></textarea>
                                <br />

                                <input
                                    type="submit"
                                    style="
                                        font-family: 'Kelly Slab';
                                        color: #FFF;
                                        background-color: #000;
                                        border-color: #000;">
                            </form>
    </body>
   </html>