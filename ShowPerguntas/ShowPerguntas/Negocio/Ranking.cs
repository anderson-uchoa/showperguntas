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

        int pontuacaoMax;
        int pontuacaoMin = 0;
        public int IdUsuario;

        #endregion

        #region Contrutores

        public Ranking()
        {
        }

        public Ranking (int IdUsuario, int pontuacao){
            this.IdUsuario = IdUsuario;
            if (pontuacao > pontuacaoMin)
            {
                if(BuscarPontuacaoPorJogador())
                    if (pontuacao > this.pontuacaoMax)
                    {
                        this.pontuacaoMax = pontuacao;
                        if (!PontuarPorJogador()) ;
                            //MENSAGEM DE ERRO - NAO PODE GRAVAR NO RANKIGN
                    }
                    
            }
        }

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

        public Boolean RemoverJogadorRanking()
        {
            try
            {
                RankingDAO rDAO = new RankingDAO();
                rDAO.IdUsuario = this.IdUsuario;
                return rDAO.RemoverJogadorRanking();
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