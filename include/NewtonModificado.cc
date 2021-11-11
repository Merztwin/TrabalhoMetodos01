#include "NewtonModificado.hh"

//
double NewtonModificado(double d, double a, double EPSILON, std::vector<double> &lim_inf, std::vector<double> &lim_sup, std::vector<int> &iteracoes)
{
  int k = 0;
  double x0=d;

  if(Function(x0,a)<EPSILON){
    lim_inf.push_back(x0 - EPSILON);
    lim_sup.push_back(x0 + EPSILON);
    iteracoes.push_back(k);
    return x0;
  }
  double x1 = 0;
  x1 = x1 - (Function(x1,a)/DerivedFunction(x0,a));
  

	while((fabs(Function(x1,a))>=EPSILON) || (fabs(x1-x0)>=EPSILON)){
    k++;
    x0 = x1;
    x1 = x1 - (Function(x1,a)/DerivedFunction(x0,a));
	}

  lim_inf.push_back(x1 - EPSILON);
  lim_sup.push_back(x1 + EPSILON);
  iteracoes.push_back(k);
  return x1;
}