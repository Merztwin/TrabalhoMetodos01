#include "Secante.hh"

//
double Secante(double x0, double x1, double precisao, double a, std::vector<double> &lim_inf, std::vector<double> &lim_sup)
{

  if(abs(Function(x0, a)) < precisao)
  {
    lim_inf.push_back(x0 - precisao);
    lim_sup.push_back(x0 + precisao);
    return x0;
  }

  if((abs(Function(x1, a))< precisao) || (abs(x1 - x0) < precisao))
  {
    lim_inf.push_back(x1 - precisao);
    lim_sup.push_back(x1 + precisao);
    return x1;
  }

  double x2 = x1 - ((Function(x1, a)/(Function(x1, a) - Function(x0, a)))*(x1-x0));

  int count = 0;
  while((abs(Function(x2, a))>=precisao) && (abs(x2 - x1) >= precisao) )
  {
    count +=1;
    x0 = x1;
    x1 = x2;
    x2 = x1 - ((Function(x1, a)/(Function(x1, a) - Function(x0, a)))*(x1-x0));
  }
  
  lim_inf.push_back(x2 - precisao);
  lim_sup.push_back(x2 + precisao);
  return x2;
}