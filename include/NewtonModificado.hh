#pragma once
#include "Aux.hh"

//
double NewtonModificado(double d, double a, double EPSILON, std::vector<double> &lim_inf, std::vector<double> &lim_sup, std::vector<int> &iteracoes);