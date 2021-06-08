package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity(name="receitas")
public class Receita {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO) // geração automatica da numeração do ID
    private long id;           //atributo de persistência

    @Column(name="nome")
    private String nome;

    @Column(name="tempo_preparo")
    private String tempoDePreparo;

    @Column(name="modo_preparo")
    private String modoDePreparo;


    // -----------  métodos getter & setters

    public void setId(long id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setModoDePreparo(String modoDePreparo) {
        this.modoDePreparo = modoDePreparo;
    }
 
    public void setTempoDePreparo(String tempoDePreparo) {
        this.tempoDePreparo = tempoDePreparo;
    }

    public long getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getModoDePreparo() {
        return modoDePreparo;
    }

    public String getTempoDePreparo() {
        return tempoDePreparo;
    }
}
