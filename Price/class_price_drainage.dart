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
