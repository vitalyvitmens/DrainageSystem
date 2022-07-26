class PriceDrainage {
  /*
  Класс PriceDrainage (Прайс водосточной системы), он принимает 
  на вход следующие свойства (параметры):
  - double gutter_price (стоимость желоба за 1шт. в руб)
  - double gutter_connector_price (стоимость соединителя желоба за 1шт. в руб)
  - double plug_price (стоимость заглушки желоба за 1шт. в руб)
  - double gutter_holder_price (стоимость держателя желоба за 1шт. в руб)
  - double gutter_angle_price (стоимость угла желоба за 1шт. в руб)
  - double funnel_price (стоимость воронки за 1шт. в руб)
  - double elbow_price (стоимость колена за 1шт. в руб)
  - double big_pipe_price (стоимость большой трубы за 1шт. в руб)
  - double pipe_connector_price (стоимость соединителя трубы за 1шт. в руб)
  - double small_pipe_price (стоимость малой трубы за 1шт. в руб)
  - double tip_price (стоимость отмёта за 1шт. в руб)
  - double pipe_holder_price (стоимость держателя трубы за 1шт. в руб)
  - double pin_price (стоимость штыря за 1шт. в руб)
  */
  double gutter_price = 21.12;
  double gutter_connector_price = 8.28;
  double plug_price = 3.96;
  double gutter_holder_price = 2.94;
  double gutter_angle_price = 13.62;
  double funnel_price = 14.82;
  double elbow_price = 9.36;
  double big_pipe_price = 25.62;
  double pipe_connector_price = 4.92;
  double small_pipe_price = 10.02;
  double tip_price = 8.88;
  double pipe_holder_price = 3.84;
  double pin_price = 5.76;

  @override
  String toString() {
    return '''
Стоимость желоба (L=3000):    $gutter_price руб 
Стоимость соединителя желоба: $gutter_connector_price руб
Стоимость заглушки желоба:    $plug_price руб
Стоимость держателя желоба:   $gutter_holder_price руб
Стоимость угла желоба:        $gutter_angle_price руб
Стоимость воронки:            $funnel_price руб
Стоимость колена:             $elbow_price руб
Стоимость трубы (L=3000):     $big_pipe_price руб
Стоимость соединителя трубы:  $pipe_connector_price руб
Стоимость трубы (L=1000):     $small_pipe_price руб
Стоимость отмёта:             $tip_price руб
Стоимость держателя трубы:    $pipe_holder_price руб
Стоимость штыря:              $pin_price руб
''';
  }
}

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
  double C8_price_050mat = 21.24;
  double C8_price_045mat = 18.60;
  double C8_price_050 = 18.00;
  double C8_price_045 = 16.14;
  double C8_price_040 = 15.48;
  double C8_price_035 = 12.20;
  double C8_price_050zinc = 15.18;
  double C8_price_045zinc = 14.04;
  double C8_price_040zinc = 11.18;

  double pawnC8_price_mat = 2.90;
  double pawnC8_price = 2.60;
  double pawnC8_price_zinc = 2.20;

  double MP20_price_050mat = 22.80;
  double MP20_price_045mat = 19.32;
  double MP20_price_050 = 18.60;
  double MP20_price_045 = 17.10;
  double MP20_price_040 = 16.08;
  double MP20_price_035 = 12.92;
  double MP20_price_050zinc = 15.84;
  double MP20_price_045zinc = 14.52;
  double MP20_price_040zinc = 12.36;

  double pawnMP20_price_mat = 3.30;
  double pawnMP20_price = 2.90;
  double pawnMP20_price_zinc = 2.50;

  double fence_double_sided_price_040mat = 2.70;
  double fence_double_sided_price_040 = 2.30;

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

class Screws {
  /*
  Класс Screws (Саморезы), он принимает 
  на вход следующие свойства (параметры):
  - double screw_48x29 (стоимость самореза металл по дереву 4.8х29 за 1шт в руб)
  - double screw_48x70 (стоимость самореза металл по дереву 4.8х70 за 1шт в руб)
  - double screw_55x19 (стоимость самореза металл по металу 5.5х19 за 1шт в руб)
  */
  double screw_48x29 = 0.17;
  double screw_48x70 = 0.24;
  double screw_55x19 = 0.17;

  @override
  String toString() {
    return '''
Стоимость самореза металл по дереву 4.8х29 за 1шт:        ${screw_48x29.toStringAsFixed(2)} руб 
Стоимость самореза металл по дереву 4.8х70 за 1шт:        ${screw_48x70.toStringAsFixed(2)} руб 
Стоимость самореза металл по металу 5.5х19 за 1шт:        ${screw_55x19.toStringAsFixed(2)} руб 
''';
  }
}
