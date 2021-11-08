#include "Aux.hh"

//
double Function(double d,double a)
{
  return a*(std::exp(d)) - 4*pow(d,2);
}

//
double DerivedFunction(double d,double a){
  return a*(std::exp(d)) - 8*d;
}