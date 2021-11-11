#include "Secante.hh"

//
double Secante(double x0, double x1, double precisao, double a, std::vector<double> &lim_inf, std::vector<double> &lim_sup, std::vector<int> &iteracoes)
{
  int k = 0;
  if (fabs(Function(x0, a)) < precisao)
  {
    lim_inf.push_back(x0 - precisao);
    lim_sup.push_back(x0 + precisao);
    iteracoes.push_back(k);
    return x0;
  }

  if ((fabs(Function(x1, a)) < precisao) || (fabs(x1 - x0) < precisao))
  {
    lim_inf.push_back(x1 - precisao);
    lim_sup.push_back(x1 + precisao);
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

  lim_inf.push_back(x2 - precisao);
  lim_sup.push_back(x2 + precisao);
  iteracoes.push_back(k);
  return x2;
}