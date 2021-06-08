package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity(name="alimento")
public class Alimento {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO) // geração automatica da numeração do ID
    private  long id;           //atributo de persistência

    @Column(name="nome")
    private String nome;

    @Column(name="categoria")
    private String categoria;

    @Column(name="quantidade")
    private int quantidade;

    // -----------  métodos getter & setters

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
}
