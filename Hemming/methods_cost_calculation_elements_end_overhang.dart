final CostElementsEndOverhang = <double>[];
double sum_costs_elements_end_overhang() {
  if (CostElementsEndOverhang.isEmpty) {
    return 0;
  }
  return CostElementsEndOverhang.reduce((value, element) => value += element);
}

final listCostNumSheetsC8EndOverhang = <int>[];
int sum_cost_num_sheetsC8_end_overhang() {
  if (listCostNumSheetsC8EndOverhang.isEmpty) {
    return 0;
  }
  return listCostNumSheetsC8EndOverhang
      .reduce((value, element) => value += element);
}

final listCostAreaC8EndOverhang = <double>[];
double sum_cost_areaC8_end_overhang() {
  if (listCostAreaC8EndOverhang.isEmpty) {
    return 0;
  }
  return listCostAreaC8EndOverhang.reduce((value, element) => value += element);
}

final listCostlengthLplanksEndOverhang = <double>[];
double sum_cost_length_Lplanks_end_overhang() {
  if (listCostlengthLplanksEndOverhang.isEmpty) {
    return 0;
  }
  return listCostlengthLplanksEndOverhang
      .reduce((value, element) => value += element);
}

final listCostScrewsEndOverhang = <double>[];
double sum_cost_screws_hemming_end_overhang() {
  if (listCostScrewsEndOverhang.isEmpty) {
    return 0;
  }
  return (listCostScrewsEndOverhang)
      .reduce((value, element) => value += ((element / 250).ceil() * 250));
}
