using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShowPerguntas.Dados;

namespace ShowPerguntas.Negocio
{
    public class Ranking
    {
        #region Atributos

        int IdRanking;
        int pontuacaoMax;
        int IdUsuario;

        #endregion

        #region Metodos

        public Boolean BuscarPontuacaoPorJogador()
        {
            try
            {
                RankingDAO rDAO = new RankingDAO();
                rDAO.IdUsuario = this.IdUsuario;
                if (rDAO.BuscarPontuacaoPorJogador())
                {
                    this.pontuacaoMax = rDAO.pontuacaoMax;
                    return true;
                }
                else
                {
                    return false;
                }
                    
            }
            catch (Exception)
            {
                return false;
                // throw;
            }
        }

        public Boolean PontuarPorJogador()
        {
            try
            {
                RankingDAO rDAO = new RankingDAO();
                rDAO.IdUsuario = this.IdUsuario;
                rDAO.pontuacaoMax = this.pontuacaoMax;
                return rDAO.AtualizarPontuacaoPorJogador();
            }
            catch (Exception)
            {
                return false;
                //throw;
            }
        }

        #endregion
    }
}