final listElementsCorniceOverhang = <Object>[];
Object sum_elements_cornice_overhang() {
  if (listElementsCorniceOverhang.isEmpty) {
    return 0;
  }
  return listElementsCorniceOverhang;
}

final listNumSheetsC8CorniceOverhang = <int>[];
int sum_num_sheetsC8_cornice_overhang() {
  if (listNumSheetsC8CorniceOverhang.isEmpty) {
    return 0;
  }
  return listNumSheetsC8CorniceOverhang
      .reduce((value, element) => value += element);
}

final listAreaC8CorniceOverhang = <double>[];
double sum_areaC8_cornice_overhang() {
  if (listAreaC8CorniceOverhang.isEmpty) {
    return 0;
  }
  return listAreaC8CorniceOverhang.reduce((value, element) => value += element);
}

final listlengthLplanksCorniceOverhang = <double>[];
double sum_length_Lplanks_cornice_overhang() {
  if (listlengthLplanksCorniceOverhang.isEmpty) {
    return 0;
  }
  return listlengthLplanksCorniceOverhang
      .reduce((value, element) => value += element);
}

final listScrewsCorniceOverhang = <int>[];
int sum_screws_hemming_cornice_overhang() {
  if (listScrewsCorniceOverhang.isEmpty) {
    return 0;
  }
  return listScrewsCorniceOverhang.reduce((value, element) => value += element);
}
