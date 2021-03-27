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