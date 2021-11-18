#include "Aux.hh"
#include "NewtonRaphson.hh"
#include "NewtonModificado.hh"
#include "Secante.hh"

void QuadroResposta(std::vector<double> a, std::vector<double> d, std::vector<double> erro)
{
  std::cout << "a |     d     |   Erro" << std::endl;
  int tam = a.size();

  for (int i = 0; i < tam; i++)
  {
    std::cout << a.at(i) << " | " << d.at(i) << " | "
              << std::to_string(erro.at(i)) << std::endl;
  }
}

void QuadroComparativo(std::vector<double> a, std::vector<double> ds_nr, std::vector<double> ds_nm, std::vector<double> ds_sec, std::vector<int> iterNR, std::vector<int> iterNM, std::vector<int> iterSEC)
{
  std::cout << "Quadro Comparativo" << std::endl;

  int tam = a.size();
  std::cout << "K = Numero de iteracoes" << std::endl;
  std::cout << "a |  (d NR,K)    |   (d NM, K)  |  (d sec, K)" << std::endl;

  for (int i = 0; i < tam; i++)
  {
    std::cout << a.at(i) << " | "
              << "(" << ds_nr.at(i) << "," << iterNR.at(i) << ")"
              << " | "
              << "(" << ds_nm.at(i) << "," << iterNM.at(i) << ")"
              << " | "
              << "(" << ds_sec.at(i) << "," << iterSEC.at(i) << ")" << std::endl;
  }
}

int main(int argc, char **argv)
{
  double aprox;
  double aprox_2;
  double epsilon;
  int n = 0;
  std::vector<double> as;

  std::vector<int> iterNR;
  std::vector<int> iterNM;
  std::vector<int> iterSEC;

  std::vector<double> ds_nr;
  std::vector<double> nr_erro;

  std::vector<double> ds_nm;
  std::vector<double> nm_erro;

  std::vector<double> ds_sec;
  std::vector<double> sec_erro;

  std::cout << "Quantidade de amplitudes (a):";
  std::cin >> n;

  double a_atual;
  for (int i = 0; i < n; i++)
  {
    std::cout << "Amplitude a_" << i + 1 << ":";

    std::cin >> a_atual;
    if (a_atual < 0)
    {
      std::cout << "Valores negativos para a amplitude nao serao considerados" << std::endl;
    }
    else
    {
      as.push_back(a_atual);
    }
  }

  std::cout << "Aproximacao 1 (d0):";
  std::cin >> aprox;

  std::cout << "Aproximacao 2 (d1):";
  std::cin >> aprox_2;

  std::cout << "Precisao:";
  std::cin >> epsilon;
  std::cout << std::endl;
  if (as.size() != 0)
  {
    for (int i = 0; i < as.size(); i++)
    {

      double res_nr = NewtonRaphson(aprox, as.at(i), epsilon, nr_erro, iterNR);
      ds_nr.push_back(res_nr);

      double res_nm = NewtonModificado(aprox, as.at(i), epsilon, nm_erro, iterNM);
      ds_nm.push_back(res_nm);

      double res_sec = Secante(aprox, aprox_2, epsilon, as.at(i), sec_erro, iterSEC);
      ds_sec.push_back(res_sec);
    }

    std::cout << "Quadro Resposta" << std::endl;
    std::cout << "Newton-Raphson" << std::endl;
    QuadroResposta(as, ds_nr, nr_erro);
    std::cout << std::endl;
    std::cout << "Newton Modificado" << std::endl;
    QuadroResposta(as, ds_nm, nm_erro);
    std::cout << std::endl;
    std::cout << "Secante" << std::endl;
    QuadroResposta(as, ds_sec, sec_erro);
    std::cout << std::endl;
    QuadroComparativo(as, ds_nr, ds_nm, ds_sec, iterNR, iterNM, iterSEC);
  }
  else
  {
    std::cout << "Nao existem raizes para estas funcoes" << std::endl;
  }

  return EXIT_SUCCESS;
}