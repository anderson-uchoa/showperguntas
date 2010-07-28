using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Dados;

namespace ShowPerguntas.Negocio
{
    public class Jogador: Usuario
    {
        public Jogador()
        {
        }

        public Jogador(String n, String sn, String l, String s)
        {
            this.nome = n;
            this.sobrenome = sn;
            this.login = l;
            this.senha = s;
        }

        public Jogador(int id, String n, String sn, String l, String s)
        {
            this.IdUsuario = id;
            this.nome = n;
            this.sobrenome = sn;
            this.login = l;
            this.senha = s;
        }

        public Boolean CadastrarJogador()
        {
            try
            {
                UsuarioDAO uDAO = new UsuarioDAO();
                uDAO.nome = nome;
                uDAO.sobrenome = sobrenome;
                uDAO.login = login;
                uDAO.senha = senha;
                uDAO.InserirUsuario();
                return true;
            }
            catch (Exception)
            {
                return false;
                // throw;
            }
        }

        public Boolean AtualizarJogador()
        {
            try
            {
                UsuarioDAO uDAO = new UsuarioDAO();
                this.IdUsuario = uDAO.IdUsuario;
                this.nome = uDAO.nome;
                this.sobrenome = uDAO.sobrenome;
                this.login = uDAO.login;
                this.senha = uDAO.senha;
                return uDAO.AtualizarUsuario();
            }
            catch (Exception)
            {
                return false;
                //throw;
            }        
        }

        public Boolean BuscarJogadorPorId(int id)
        {
            try 
	        {	        
		        UsuarioDAO uDAO = new UsuarioDAO();
                if (uDAO.BuscarJogadorPorId(id))
                {
                    this.IdUsuario = uDAO.IdUsuario;
                    this.nome = uDAO.nome;
                    this.sobrenome = uDAO.sobrenome;
                    this.login = uDAO.login;
                    this.senha = uDAO.senha;
                    return true;
                }
                else
                    return false;
	        }
	        catch (Exception)
	        {
		        return false;
		        //throw;
	        }
            return (new UsuarioDAO()).BuscarJogadorPorId(id);
        }
    }
}