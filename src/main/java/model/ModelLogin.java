package model;

import java.io.Serializable;
import java.util.Objects;

public class ModelLogin implements Serializable	 {
private static final long serialVersionUID = 1L;

private long id;
private String nome;
private String email;
private String login;
private String senha;

public ModelLogin(String login, String senha) {
	
	this.login = login;
	this.senha = senha;
}


public ModelLogin(long id, String nome, String email, String login, String senha) {
	this.id = id;
	this.nome = nome;
	this.email = email;
	this.login = login;
	this.senha = senha;
}
public ModelLogin( String nome, String email, String login, String senha) {
	this.nome = nome;
	this.email = email;
	this.login = login;
	this.senha = senha;
}





public ModelLogin() {
	super();
}


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

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getLogin() {
	return login;
}

public void setLogin(String login) {
	this.login = login;
}

public String getSenha() {
	return senha;
}

public void setSenha(String senha) {
	this.senha = senha;
}

@Override
public int hashCode() {
	return Objects.hash(email, id, login, nome, senha);
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	ModelLogin other = (ModelLogin) obj;
	return Objects.equals(email, other.email) && id == other.id && Objects.equals(login, other.login)
			&& Objects.equals(nome, other.nome) && Objects.equals(senha, other.senha);
}

@Override
public String toString() {
	return "ModelLogin [id=" + id + ", nome=" + nome + ", email=" + email + ", login=" + login + ", senha=" + senha
			+ "]";
}




}
