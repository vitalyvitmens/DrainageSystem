class PriceHedge {
  /*
  Класс PriceHedge (Прайс Изгородь), он принимает 
  на вход следующие свойства (параметры):
  - double C8_price_050mat (стоимость матового 0.50мм профнастила С8 за 1м2 в руб)
  - double C8_price_045mat (стоимость матового 0.45мм профнастила С8 за 1м2 в руб)
  - double C8_price_050 (стоимость глянцевого 0.50мм профнастила С8 за 1м2 в руб)
  - double C8_price_045 (стоимость глянцевого 0.45мм профнастила С8 за 1м2 в руб)
  - double C8_price_040 (стоимость глянцевого 0.40мм профнастила С8 за 1м2 в руб)
  - double C8_price_035 (стоимость глянцевого 0.35мм профнастила С8 за 1м2 в руб)
  - double C8_price_050zinc (стоимость оцинкованного 0.50мм профнастила С8 за 1м2 в руб)
  - double C8_price_045zinc (стоимость оцинкованного 0.45мм профнастила С8 за 1м2 в руб)
  - double C8_price_040zinc (стоимость оцинкованного 0.40мм профнастила С8 за 1м2 в руб)
  - double MP20_price_050mat (стоимость матового 0.50мм профнастила MП20 за 1м2 в руб)
  - double MP20_price_045mat (стоимость матового 0.45мм профнастила MП20 за 1м2 в руб)
  - double MP20_price_050 (стоимость глянцевого 0.50мм профнастила MП20 за 1м2 в руб)
  - double MP20_price_045 (стоимость глянцевого 0.45мм профнастила MП20 за 1м2 в руб)
  - double MP20_price_040 (стоимость глянцевого 0.40мм профнастила MП20 за 1м2 в руб)
  - double MP20_price_035 (стоимость глянцевого 0.35мм профнастила MП20 за 1м2 в руб)
  - double MP20_price_050zinc (стоимость оцинкованного 0.50мм профнастила MП20 за 1м2 в руб)
  - double MP20_price_045zinc (стоимость оцинкованного 0.45мм профнастила MП20 за 1м2 в руб)
  - double MP20_price_040zinc (стоимость оцинкованного 0.40мм профнастила MП20 за 1м2 в руб)
  - double fence_double_sided_price_040mat (стоимость двухстороннего матового 0.40мм штакета за 1м в руб)
  - double fence_double_sided_price_040 (стоимость двухстороннего глянцевого 0.40мм штакета за 1м в руб)
  */
  static const double C8_price_050mat = 21.24;
  static const double C8_price_045mat = 18.60;
  static const double C8_price_050 = 18.00;
  static const double C8_price_045 = 16.14;
  static const double C8_price_040 = 15.48;
  static const double C8_price_035 = 12.20;
  static const double C8_price_050zinc = 15.18;
  static const double C8_price_045zinc = 14.04;
  static const double C8_price_040zinc = 11.18;

  static const double pawnC8_price_mat = 2.90;
  static const double pawnC8_price = 2.60;
  static const double pawnC8_price_zinc = 2.20;

  static const double MP20_price_050mat = 22.80;
  static const double MP20_price_045mat = 19.32;
  static const double MP20_price_050 = 18.60;
  static const double MP20_price_045 = 17.10;
  static const double MP20_price_040 = 16.08;
  static const double MP20_price_035 = 12.92;
  static const double MP20_price_050zinc = 15.84;
  static const double MP20_price_045zinc = 14.52;
  static const double MP20_price_040zinc = 12.36;

  static const double pawnMP20_price_mat = 3.30;
  static const double pawnMP20_price = 2.90;
  static const double pawnMP20_price_zinc = 2.50;

  static const double fence_double_sided_price_040mat = 2.70;
  static const double fence_double_sided_price_040 = 2.30;

  @override
  String toString() {
    return '''
Стоимость матового 0.50мм профнастила С8 за 1м2:          ${C8_price_050mat.toStringAsFixed(2)} руб 
Стоимость матового 0.45мм профнастила С8 за 1м2:          ${C8_price_045mat.toStringAsFixed(2)} руб
Стоимость глянцевого 0.50мм профнастила С8 за 1м2:        ${C8_price_050.toStringAsFixed(2)} руб
Стоимость глянцевого 0.45мм профнастила С8 за 1м2:        ${C8_price_045.toStringAsFixed(2)} руб
Стоимость глянцевого 0.40мм профнастила С8 за 1м2:        ${C8_price_040.toStringAsFixed(2)} руб
Стоимость глянцевого 0.35мм профнастила С8 за 1м2:        ${C8_price_035.toStringAsFixed(2)} руб
Стоимость оцинкованного 0.50мм профнастила С8 за 1м2:     ${C8_price_050zinc.toStringAsFixed(2)} руб
Стоимость оцинкованного 0.45мм профнастила С8 за 1м2:     ${C8_price_045zinc.toStringAsFixed(2)} руб
Стоимость оцинкованного 0.40мм профнастила С8 за 1м2:     ${C8_price_040zinc.toStringAsFixed(2)} руб

Стоимость матовой Пэшки для С8 профнастила за 1мп:        ${pawnC8_price_mat.toStringAsFixed(2)} руб 
Стоимость глянцевой Пэшки для С8 профнастила за 1мп:      ${pawnC8_price.toStringAsFixed(2)} руб 
Стоимость оцинкованной Пэшки для С8 профнастила за 1мп:   ${pawnC8_price_zinc.toStringAsFixed(2)} руб 

Стоимость матового 0.50мм профнастила MП20 за 1м2:        ${MP20_price_050mat.toStringAsFixed(2)} руб
Стоимость матового 0.45мм профнастила MП20 за 1м2:        ${MP20_price_045mat.toStringAsFixed(2)} руб
Стоимость глянцевого 0.50мм профнастила MП20 за 1м2:      ${MP20_price_050.toStringAsFixed(2)} руб
Стоимость глянцевого 0.45мм профнастила MП20 за 1м2:      ${MP20_price_045.toStringAsFixed(2)} руб
Стоимость глянцевого 0.40мм профнастила MП20 за 1м2:      ${MP20_price_040.toStringAsFixed(2)} руб
Стоимость болглянцевого 0.35мм профнастила MП20 за 1м2:   ${MP20_price_035.toStringAsFixed(2)} руб
Стоимость оцинкованного 0.50мм профнастила MП20 за 1м2:   ${MP20_price_050zinc.toStringAsFixed(2)} руб
Стоимость оцинкованного 0.45мм профнастила MП20 за 1м2:   ${MP20_price_045zinc.toStringAsFixed(2)} руб
Стоимость оцинкованного 0.40мм профнастила MП20 за 1м2:   ${MP20_price_040zinc.toStringAsFixed(2)} руб

Стоимость матовой Пэшки для МП20 профнастила за 1мп:      ${pawnMP20_price_mat.toStringAsFixed(2)} руб 
Стоимость глянцевой Пэшки для МП20 профнастила за 1мп:    ${pawnMP20_price.toStringAsFixed(2)} руб 
Стоимость оцинкованной Пэшки для МП20 профнастила за 1мп: ${pawnMP20_price_zinc.toStringAsFixed(2)} руб 

Стоимость двухстороннего матового 0.40мм штакета за 1м:   ${fence_double_sided_price_040mat.toStringAsFixed(2)} руб
Стоимость двухстороннего глянцевого 0.40мм штакета за 1м: ${fence_double_sided_price_040.toStringAsFixed(2)} руб
''';
  }
}
