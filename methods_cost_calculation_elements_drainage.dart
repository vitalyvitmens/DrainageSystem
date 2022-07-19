final listCosts = <double>[];
double sum_costs() {
  if (listCosts.isEmpty) {
    return 0;
  }
  return listCosts.reduce((value, element) => value += element);
}

final listGuttersCost = <double>[];
double sum_gutters_cost() {
  if (listGuttersCost.isEmpty) {
    return 0;
  }
  return listGuttersCost.reduce((value, element) => value += element);
}

final listGutterConnectCost = <double>[];
double sum_gutters_connect_cost() {
  if (listGutterConnectCost.isEmpty) {
    return 0;
  }
  return listGutterConnectCost.reduce((value, element) => value += element);
}

final listPlugsCost = <double>[];
double sum_plugs_cost() {
  if (listPlugsCost.isEmpty) {
    return 0;
  }
  return listPlugsCost.reduce((value, element) => value += element);
}

final listGutterHoldersCost = <double>[];
double sum_gutter_holders_cost() {
  if (listGutterHoldersCost.isEmpty) {
    return 0;
  }
  return listGutterHoldersCost.reduce((value, element) => value += element);
}

final listGutterAnglesCost = <double>[];
double sum_gutter_angles_cost() {
  if (listGutterAnglesCost.isEmpty) {
    return 0;
  }
  return listGutterAnglesCost.reduce((value, element) => value = element);
}

final listFunnelsCost = <double>[];
double sum_funnels_cost() {
  if (listFunnelsCost.isEmpty) {
    return 0;
  }
  return listFunnelsCost.reduce((value, element) => value += element);
}

final listElbowsCost = <double>[];
double sum_elbows_cost() {
  if (listElbowsCost.isEmpty) {
    return 0;
  }
  return listElbowsCost.reduce((value, element) => value += element);
}

final listBigsPipesCost = <double>[];
double sum_bigs_pipes_cost() {
  if (listBigsPipesCost.isEmpty) {
    return 0;
  }
  return listBigsPipesCost.reduce((value, element) => value += element);
}

final listPipeConnectCost = <double>[];
double sum_pipe_connect_cost() {
  if (listPipeConnectCost.isEmpty) {
    return 0;
  }
  return listPipeConnectCost.reduce((value, element) => value += element);
}

final listSmallPipesCost = <double>[];
double sum_small_pipes_cost() {
  if (listSmallPipesCost.isEmpty) {
    return 0;
  }
  return listSmallPipesCost.reduce((value, element) => value += element);
}

final listTipsCost = <double>[];
double sum_tips_cost() {
  if (listTipsCost.isEmpty) {
    return 0;
  }
  return listTipsCost.reduce((value, element) => value += element);
}

final listPipeHoldersCost = <double>[];
double sum_pipe_holders_cost() {
  if (listPipeHoldersCost.isEmpty) {
    return 0;
  }
  return listPipeHoldersCost.reduce((value, element) => value += element);
}

final listPinsCost = <double>[];
double sum_pins_cost() {
  if (listPinsCost.isEmpty) {
    return 0;
  }
  return listPinsCost.reduce((value, element) => value += element);
}
