final CostElementsCorniceOverhang = <double>[];
double sum_costs_elements_cornice_overhang() {
  if (CostElementsCorniceOverhang.isEmpty) {
    return 0;
  }
  return CostElementsCorniceOverhang.reduce(
      (value, element) => value += element);
}

final listCostNumSheetsC8CorniceOverhang = <int>[];
int sum_cost_num_sheetsC8_cornice_overhang() {
  if (listCostNumSheetsC8CorniceOverhang.isEmpty) {
    return 0;
  }
  return listCostNumSheetsC8CorniceOverhang
      .reduce((value, element) => value += element);
}

final listCostAreaC8CorniceOverhang = <double>[];
double sum_cost_areaC8_cornice_overhang() {
  if (listCostAreaC8CorniceOverhang.isEmpty) {
    return 0;
  }
  return listCostAreaC8CorniceOverhang
      .reduce((value, element) => value += element);
}

final listCostlengthLplanksCorniceOverhang = <double>[];
double sum_cost_length_Lplanks_cornice_overhang() {
  if (listCostlengthLplanksCorniceOverhang.isEmpty) {
    return 0;
  }
  return listCostlengthLplanksCorniceOverhang
      .reduce((value, element) => value += element);
}

final listCostScrewsCorniceOverhang = <double>[];
double sum_cost_screws_hemming_cornice_overhang() {
  if (listCostScrewsCorniceOverhang.isEmpty) {
    return 0;
  }
  return (listCostScrewsCorniceOverhang)
      .reduce((value, element) => value += ((element / 250).ceil() * 250));
}
