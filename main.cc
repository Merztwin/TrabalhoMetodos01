#include "Aux.hh"
#include "NewtonRaphson.hh"
#include "NewtonModificado.hh"
#include "Secante.hh"

//
void QuadroResposta(std::vector<double> a, std::vector<double> d, std::vector<double> limite_inf, std::vector<double> limite_sup)
{
  int tam = a.size();

  for (int i = 0; i < tam; i++)
  {
    std::cout << a.at(i) << " | " << d.at(i) << " | "
              << "[" + std::to_string(limite_inf.at(i)) + ", " + std::to_string(limite_sup.at(i)) + "]" << std::endl;
  }
}

void QuadroComparativo(std::vector<double> a, std::vector<double> ds_nr, std::vector<double> ds_nm, std::vector<double> ds_sec, std::vector<int> iterNR, std::vector<int> iterNM, std::vector<int> iterSEC)
{
  std::cout << "Quadro Comparativo" << std::endl;

  int tam = a.size();
  std::cout << "K = Numero de iteracoes" << std::endl;
  std::cout << "A|(d NR,K)|(d NM, K)|(d sec, K)" << std::endl;

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
  double aprox = 0;
  double epsilon;
  int n = 0;
  std::vector<double> as;

  std::vector<int> iterNR;
  std::vector<int> iterNM;
  std::vector<int> iterSEC;

  //
  std::vector<double> ds_nr;
  std::vector<double> nr_limite_inf;
  std::vector<double> nr_limite_sup;

  std::vector<double> ds_nm;
  std::vector<double> nm_limite_inf;
  std::vector<double> nm_limite_sup;

  std::vector<double> ds_sec;
  std::vector<double> sec_limite_inf;
  std::vector<double> sec_limite_sup;


  std::cout << "Quantidade de a's: ";
  std::cin >> n;
  std::cout << std::endl;

  double a_atual;
  for(int i = 0; i < n; i++){
    std::cout << "Insira o a" << i+1 << ":";
    std::cin >> a_atual;
    as.push_back(a_atual);
  }
  
  std::cout << "Insira a precisao:";
  std::cin >> epsilon;
  std::cout << std::endl;

  //
  for(int i = 0; i < n; i++){
    double res_nr = NewtonRaphson(aprox, as.at(i), epsilon, nr_limite_inf, nr_limite_sup, iterNR);
    ds_nr.push_back(res_nr);

    double res_nm = NewtonModificado(aprox, as.at(i), epsilon, nm_limite_inf, nm_limite_sup, iterNM);
    ds_nm.push_back(res_nm);

    double res_sec = Secante(aprox, -1, epsilon, as.at(i), sec_limite_inf, sec_limite_sup, iterSEC);
    ds_sec.push_back(res_sec);
  }

  //
  std::cout << "Quadro Resposta" << std::endl;
  std::cout << "Newton-Raphson" << std::endl;
  QuadroResposta(as, ds_nr, nr_limite_inf, nr_limite_sup);
  std::cout << "Newton-Raphson Modificado" << std::endl;
  QuadroResposta(as, ds_nm, nm_limite_inf, nm_limite_sup);
  std::cout << "Secante" << std::endl;
  QuadroResposta(as, ds_sec, sec_limite_inf, sec_limite_sup);

  QuadroComparativo(as, ds_nr, ds_nm, ds_sec, iterNR, iterNM, iterSEC);

  return EXIT_SUCCESS;
}