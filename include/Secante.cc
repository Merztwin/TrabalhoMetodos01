#include "Secante.hh"

//
double Secante(double x0, double x1, double precisao, double a, std::vector<double> &erro, std::vector<int> &iteracoes)
{
  int k = 0;
  if (fabs(Function(x0, a)) < precisao)
  {
    erro.push_back(fabs(Function(x0, a)));
    iteracoes.push_back(k);
    return x0;
  }

  if ((fabs(Function(x1, a)) < precisao) || (fabs(x1 - x0) < precisao))
  {
    erro.push_back(fabs(Function(x1, a)));
    iteracoes.push_back(k);
    return x1;
  }

  double x2 = x1 - ((Function(x1, a) / (Function(x1, a) - Function(x0, a))) * (x1 - x0));

  while ((fabs(Function(x2, a)) >= precisao) && (fabs(x2 - x1) >= precisao))
  {

    k++;
    x0 = x1;
    x1 = x2;
    x2 = x1 - ((Function(x1, a) / (Function(x1, a) - Function(x0, a))) * (x1 - x0));
  }
  erro.push_back(fabs(Function(x2, a)));
  iteracoes.push_back(k);
  return x2;
}