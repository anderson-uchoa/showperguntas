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

        public Dados.Usuario BuscarJogadorPorId(int id)
        {
            return (new UsuarioDAO()).BuscarJogadorPorId(id);
        }
    }
}