#pragma once
#include "Aux.hh"

//
double Secante(double x0, double x1, double precisao, double a, std::vector<double> &lim_inf, std::vector<double> &lim_sup, std::vector<int> &iteracoes);