#include "NewtonRaphson.hh"

//
double NewtonRaphson(double d, double a, double EPSILON, std::vector<double> &erro, std::vector<int> &iteracoes)
{
  int k = 0;
  double x0 = d;

  if (Function(x0, a) < EPSILON)
  {
    erro.push_back(fabs(Function(x0, a)));
    iteracoes.push_back(k);
    return x0;
  }
  double x1 = 0;
  x1 = x0 - (Function(x0, a) / DerivedFunction(x0, a));

  while ((fabs(Function(x1, a)) >= EPSILON) && (fabs(x1 - x0) >= EPSILON))
  {
    k++;
    x0 = x1;
    x1 = x0 - (Function(x0, a) / DerivedFunction(x0, a));
  }
  
  if(fabs(Function(x1, a)) < EPSILON){
    erro.push_back(fabs(Function(x1, a)));
  }

  else{
    erro.push_back(fabs(x1 - x0));
  }
  
  iteracoes.push_back(k);
  return x1;
}