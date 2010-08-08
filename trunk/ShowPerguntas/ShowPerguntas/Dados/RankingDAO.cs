﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShowPerguntas.Dados
{
    public class RankingDAO
    {
        public int IdRanking;
        public int pontuacaoMax;
        public int IdUsuario;

        public Boolean BuscarPontuacaoPorJogador()
        {
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    Ranking ranking = (from r in _context.Rankings where r.UsuarioIdUsuario.Equals(this.IdUsuario) select r).First();
                    this.pontuacaoMax = ranking.pontuacaoMaxima;
                }
                return true;
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }

        public Boolean InserirPontuacaoPorJogador()
        {
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    Ranking r = new Ranking();
                    r.pontuacaoMaxima = this.pontuacaoMax;
                    r.UsuarioIdUsuario = this.IdUsuario;
                    _context.AddToRankings(r);
                    _context.SaveChanges();
                }
                return true;
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }

        public Boolean AtualizarPontuacaoPorJogador()
        {
            try
            {
                using (var _context = new Show_de_PerguntasEntities())
                {
                    Ranking ranking = (from r in _context.Rankings where r.UsuarioIdUsuario.Equals(this.IdUsuario) select r).First();
                    if (ranking != null)
                    {
                        ranking.pontuacaoMaxima = this.pontuacaoMax;
                        _context.SaveChanges();
                    }
                    else
                        return InserirPontuacaoPorJogador();
                }
                return true;
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }
    }
}