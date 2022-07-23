import 'price.dart';

class Hedge {
  /*
  Класс Hedge (изгородь), он принимает 
  на вход следующие свойства (параметры):
  - double length (длина изгороди в метрах)
  - double heigth (высота изгороди в метрах)
  и имеет ряд методов для попролётного расчета элементов изгороди
  */
  final double length;
  final double heigth;

  Hedge(this.length, this.heigth);

  @override
  String toString() {
    return '''
Длина забора:  $length м 
Высота забора: $heigth м
''';
  }
}

class ProfileC8 extends Hedge {
  /*
  Класс ProfileC8 (профнастил С8), он наследуется от класса Hedge (изгородь) 
  и принимает на вход свойства (параметры) родителя:
  - double length (длина изгороди в метрах)
  - double heigth (высота изгороди в метрах),
  а так же свои собственные свойства (параметры):
  - double full_width (полную ширину листа в метрах)
  - double useful_width (полезную ширину листа в метрах)
  и имеет методы для попролётного расчета количества листов С8 и их площади
  */
  final double full_width = 1.20;
  final double useful_width = 1.15;

  ProfileC8(
    super.length,
    super.heigth,
  );

  get_num_sheetsC8() {
    /*
  Метод get_num_sheetsC8 позволяет получить / рассчитать количество листов 
  профнастила С8 для пролёта изгороди, на основании следующих параметров:
  - double length (длина изгороди в метрах)
  - double useful_width (полезная ширина листа профнастила С8 в метрах)
  возвращает int num_sheetsC8 (количество листов профнастила С8 в штуках)
  */
    int num_sheetsC8 = (length / useful_width).ceil();
    return num_sheetsC8;
  }

  get_sheets_areaC8() {
    /*
  Метод get_sheets_areaC8 позволяет получить / рассчитать площадь листов 
  профнастила С8 для пролёта изгороди, на основании количества листов и 
  следующих параметров:
  - double heigth (высота изгороди в метрах)
  - double full_width (полная ширина листа в метрах)
  - количество листов из метода get_num_sheetsC8(),
  возвращает double sheets_areaC8 (площадь листов профнастила С8 в м2)
  */
    double sheets_areaC8 = (heigth * full_width) * get_num_sheetsC8();
    return sheets_areaC8;
  }

  get_C8_cost() {
    /*
  Метод get_C8_cost позволяет получить / рассчитать стоимость 
  листов профнастила С8 для изгороди, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price (параметр класса PriceHedge: 
  стоимость профнастила С8 за 1м2 в руб)
  возвращает double C8_cost (общая стоимость всех листов профнастила С8 в руб)
  */
    double C8_cost = get_sheets_areaC8() * PriceHedge().C8_price;
    return C8_cost;
  }
}

class ProfileMP20 extends Hedge {
  /*
  Класс ProfileMP20 (профнастил МП20), он наследуется от класса Hedge (изгородь) 
  и принимает на вход свойства (параметры) родителя:
  - double length (длина изгороди в метрах)
  - double heigth (высота изгороди в метрах),
  а так же свои собственные свойства (параметры):
  - double full_width (полную ширину листа в метрах)
  - double useful_width (полезную ширину листа в метрах)
  и имеет методы для попролётного расчета количества листов МП20 и их площади
  */
  final double full_width = 1.15;
  final double useful_width = 1.10;

  ProfileMP20(super.length, super.heigth);

  get_num_sheetsMP20() {
    /*
  Метод get_num_sheetsMP20 позволяет получить / рассчитать количество листов 
  профнастила MП20 для пролёта изгороди, на основании следующих параметров:
  - double length (длина изгороди в метрах)
  - double useful_width (полезная ширина листа профнастила MП20 в метрах)
  возвращает int num_sheetsMP20 (количество листов профнастила MП20 в штуках)
  */
    int num_sheetsMP20 = (length / useful_width).ceil();
    return num_sheetsMP20;
  }

  get_sheets_areaMP20() {
    /*
  Метод get_sheets_areaC8 позволяет получить / рассчитать площадь листов 
  профнастила MП20 для пролёта изгороди, на основании количества листов и 
  следующих параметров:
  - double heigth (высота изгороди в метрах)
  - double full_width (полная ширина листа в метрах)
  - количество листов из метода get_num_sheetsMP20(),
  возвращает double sheets_areaMP20 (площадь листов профнастила MП20 в м2)
  */
    double sheets_areaMP20 = (heigth * full_width) * get_num_sheetsMP20();
    return sheets_areaMP20;
  }

  get_MP20_cost() {
    /*
  Метод get_MP20_cost позволяет получить / рассчитать стоимость 
  листов профнастила MП20 для изгороди, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила MП20 в м2)
  - double PriceHedge().MP20_price (параметр класса PriceHedge: 
  стоимость профнастила MП20 за 1м2 в руб)
  возвращает double MP20_cost (общая стоимость всех листов профнастила MП20 в руб)
  */
    double MP20_cost = get_sheets_areaMP20() * PriceHedge().MP20_price;
    return MP20_cost;
  }
}

class Fence extends Hedge {
  /*
  Класс Fence (штакетник), он наследуется от класса Hedge (изгородь) 
  и принимает на вход свойства (параметры) родителя:
  - double length (длина изгороди в метрах)
  - double heigth (высота изгороди в метрах),
  а так же свои собственные свойства (параметры):
  - double gap (зазор между двумя соседними штакетинами в метрах)
  - double width (ширина штакетника в метрах)
  и имеет методы для попролётного расчета количества штакетника и его погонаж
  */
  final double gap;
  final double width = 0.110;

  Fence(super.length, super.heigth, this.gap);

  get_num_fence() {
    /*
  Метод get_num_fence позволяет получить / рассчитать количество штакетин
  для пролёта изгороди, на основании следующих параметров:
  - double length (длина изгороди в метрах)
  - double width (ширина штакетника в метрах)
  - double gap (зазор между двумя соседними штакетинами в метрах)
  возвращает int num_fence (количество штакетин в штуках)
  */
    int num_fence = (length / (width + gap)).ceil();
    return num_fence;
  }

  get_length_fence() {
    /*
  Метод get_length_fence позволяет получить / рассчитать погонаж штакетника 
  для пролёта изгороди, на основании количества штакетин и следующих параметров:
  - double heigth (высота изгороди в метрах)
  - количество штакетин из метода get_num_fence(),
  возвращает double length_fence (погонаж штакетника в мп)
  */
    double length_fence = heigth * get_num_fence();
    return length_fence;
  }

  get_fence_cost() {
    /*
  Метод get_fence_cost позволяет получить / рассчитать стоимость 
  штакетника для изгороди, на основании:
  - double get_length_fence() (метод расчета погонажа штакетника в мп)
  - double PriceHedge().fence_price (параметр класса PriceHedge: 
  стоимость штакетника за 1м2 в руб),
  возвращает double fence_cost (общая стоимость штакетника в руб)
  */
    double fence_cost = get_length_fence() * PriceHedge().fence_price;
    return fence_cost;
  }
}

void main() {
  final hedge = Hedge(100, 1.5);
  final profileC8 = ProfileC8(100, 1.5);
  final profileMP20 = ProfileMP20(100, 1.5);
  final fence = Fence(100, 1.5, 0.040);

  print('РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$hedge');
  print('Количество листов С8:       ${profileC8.get_num_sheetsC8()} шт');
  print(
      'Площадь листов С8:          ${profileC8.get_sheets_areaC8().toStringAsFixed(3)} м2');
  print(
      'Стоимость профнастила С8:   ${profileC8.get_C8_cost().toStringAsFixed(2)} руб\n');
  print('Количество листов МП20:     ${profileMP20.get_num_sheetsMP20()} шт');
  print(
      'Площадь листов МП20:        ${profileMP20.get_sheets_areaMP20().toStringAsFixed(3)} м2');
  print(
      'Стоимость профнастила МП20: ${profileMP20.get_MP20_cost().toStringAsFixed(2)} руб\n');
  print('Количество штакетин:        ${fence.get_num_fence()} шт');
  print(
      'Погонаж штакетника:         ${fence.get_length_fence().toStringAsFixed(3)} мп');
  print(
      'Стоимость штакетника:       ${fence.get_fence_cost().toStringAsFixed(2)} руб\n');
}
