#include "Aux.hh"
#include "NewtonRaphson.hh"
#include "NewtonModificado.hh"
#include "Secante.hh"

//
void QuadroResposta(std::vector<double> a, std::vector<double> d, std::vector<double> limite_inf, std::vector<double> limite_sup)
{
  std::cout << "Quadro Resposta"<<std::endl;

  int tam = a.size();

  for(int i = 0; i<tam; i++){

    std::cout << a.at(i) << " | " << d.at(i) << " | " << "[" + std::to_string(limite_inf.at(i)) + ", "+ std::to_string(limite_sup.at(i)) + "]" << std::endl;
    
  }
  
}

void VariacaoA(std::vector<double> as, std::vector<double> iterNR, std::vector<double> iterNM, std::vector<double> iterSEC){

}

int main(int argc, char** argv)
{
  double aprox = 0;
  double epsilon = 0.0001;

  std::vector<double> as = {1, 2, 3, 4};

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

  int tam = as.size();

  //
  for(int i = 0; i<tam; i++)
  {
    
    double res_nr = NewtonRaphson(aprox, as.at(i), epsilon, nr_limite_inf, nr_limite_sup, iterNR);
    ds_nr.push_back(res_nr);
    
    double res_nm = NewtonModificado(aprox, as.at(i), epsilon, nm_limite_inf, nm_limite_sup, iterNM);
    ds_nm.push_back(res_nm);

    double res_sec = Secante(aprox, -1, epsilon, as.at(i), sec_limite_inf, sec_limite_sup, iterSEC);
    ds_sec.push_back(res_sec);
  }


  //
  QuadroResposta(as, ds_nr, nr_limite_inf, nr_limite_sup);
  QuadroResposta(as, ds_nm, nm_limite_inf, nm_limite_sup);
  QuadroResposta(as, ds_sec, sec_limite_inf, sec_limite_sup);

  return EXIT_SUCCESS;
}