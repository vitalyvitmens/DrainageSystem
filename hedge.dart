import 'price.dart';

class Hedge {
  /*
  Класс Hedge (изгородь), он принимает 
  на вход следующие свойства (параметры):
  - double length (длина изгороди в метрах)
  - double heigth (высота изгороди в метрах)
  */
  final double length;
  final double heigth;
  final double length_pawn = 2.0;

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

  get_areaC8() {
    /*
  Метод get_areaC8 позволяет получить / рассчитать площадь листов 
  профнастила С8 для пролёта изгороди, на основании количества листов и 
  следующих параметров:
  - double heigth (высота изгороди в метрах)
  - double full_width (полная ширина листа в метрах)
  - количество листов из метода get_num_sheetsC8(),
  возвращает double areaC8 (площадь листов профнастила С8 в м2)
  */
    double areaC8 = (heigth * full_width) * get_num_sheetsC8();
    return areaC8;
  }

  get_C8_cost_050mat() {
    /*
  Метод get_C8_cost_050mat позволяет получить / рассчитать стоимость матовых 
  листов профнастила С8 для изгороди в 0.50мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_050mat (параметр класса PriceHedge: 
  стоимость матового профнастила С8 в 0.50мм толщине за 1м2 в руб)
  возвращает double C8_cost_050mat (общая стоимость всех матовых листов 
  профнастила С8 в 0.50мм толщине в руб)
  */
    double C8_cost_050mat = get_areaC8() * PriceHedge().C8_price_050mat;
    return C8_cost_050mat;
  }

  get_C8_cost_045mat() {
    /*
  Метод get_C8_cost_045mat позволяет получить / рассчитать стоимость матовых 
  листов профнастила С8 для изгороди в 0.45мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_045mat (параметр класса PriceHedge: 
  стоимость матового профнастила С8 в 0.45мм толщине за 1м2 в руб)
  возвращает double C8_cost_045mat (общая стоимость всех матовых листов 
  профнастила С8 в 0.45мм толщине в руб)
  */
    double C8_cost_045mat = get_areaC8() * PriceHedge().C8_price_045mat;
    return C8_cost_045mat;
  }

  get_C8_cost_050() {
    /*
  Метод get_C8_cost_050 позволяет получить / рассчитать стоимость глянцевых 
  листов профнастила С8 для изгороди в 0.50мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_050 (параметр класса PriceHedge: 
  стоимость глянцевого профнастила С8 в 0.50мм толщине за 1м2 в руб)
  возвращает double C8_cost_050 (общая стоимость всех глянцевых листов 
  профнастила С8 в 0.50мм толщине в руб)
  */
    double C8_cost_050 = get_areaC8() * PriceHedge().C8_price_050;
    return C8_cost_050;
  }

  get_C8_cost_045() {
    /*
  Метод get_C8_cost_045 позволяет получить / рассчитать стоимость глянцевых 
  листов профнастила С8 для изгороди в 0.45мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_045 (параметр класса PriceHedge: 
  стоимость глянцевого профнастила С8 в 0.45мм толщине за 1м2 в руб)
  возвращает double C8_cost_045 (общая стоимость всех глянцевых листов 
  профнастила С8 в 0.45мм толщине в руб)
  */
    double C8_cost_045 = get_areaC8() * PriceHedge().C8_price_045;
    return C8_cost_045;
  }

  get_C8_cost_040() {
    /*
  Метод get_C8_cost_040 позволяет получить / рассчитать стоимость глянцевых 
  листов профнастила С8 для изгороди в 0.40мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_040 (параметр класса PriceHedge: 
  стоимость глянцевого профнастила С8 в 0.40мм толщине за 1м2 в руб)
  возвращает double C8_cost_040 (общая стоимость всех глянцевых листов 
  профнастила С8 в 0.40мм толщине в руб)
  */
    double C8_cost_040 = get_areaC8() * PriceHedge().C8_price_040;
    return C8_cost_040;
  }

  get_C8_cost_035() {
    /*
  Метод get_C8_cost_035 позволяет получить / рассчитать стоимость глянцевых 
  листов профнастила С8 для изгороди в 0.35мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_035 (параметр класса PriceHedge: 
  стоимость глянцевого профнастила С8 в 0.35мм толщине за 1м2 в руб)
  возвращает double C8_cost_035 (общая стоимость всех глянцевых листов 
  профнастила С8 в 0.35мм толщине в руб)
  */
    double C8_cost_035 = get_areaC8() * PriceHedge().C8_price_035;
    return C8_cost_035;
  }

  get_C8_cost_050zinc() {
    /*
  Метод get_C8_cost_050zinc позволяет получить / рассчитать стоимость 
  оцинкованных листов профнастила С8 для изгороди в 0.50мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_050zinc (параметр класса PriceHedge: 
  стоимость оцинкованного профнастила С8 в 0.50мм толщине за 1м2 в руб)
  возвращает double C8_cost_050zinc (общая стоимость всех оцинкованных листов 
  профнастила С8 в 0.50мм толщине в руб)
  */
    double C8_cost_050zinc = get_areaC8() * PriceHedge().C8_price_050zinc;
    return C8_cost_050zinc;
  }

  get_C8_cost_045zinc() {
    /*
  Метод get_C8_cost_045zinc позволяет получить / рассчитать стоимость 
  оцинкованных листов профнастила С8 для изгороди в 0.45мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_045zinc (параметр класса PriceHedge: 
  стоимость оцинкованного профнастила С8 в 0.45мм толщине за 1м2 в руб)
  возвращает double C8_cost_045zinc (общая стоимость всех оцинкованных листов 
  профнастила С8 в 0.45мм толщине в руб)
  */
    double C8_cost_045zinc = get_areaC8() * PriceHedge().C8_price_045zinc;
    return C8_cost_045zinc;
  }

  get_C8_cost_040zinc() {
    /*
  Метод get_C8_cost_040zinc позволяет получить / рассчитать стоимость 
  оцинкованных листов профнастила С8 для изгороди в 0.40мм толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_040zinc (параметр класса PriceHedge: 
  стоимость оцинкованного профнастила С8 в 0.40мм толщине за 1м2 в руб)
  возвращает double C8_cost_040zinc (общая стоимость всех оцинкованных листов 
  профнастила С8 в 0.40мм толщине в руб)
  */
    double C8_cost_040zinc = get_areaC8() * PriceHedge().C8_price_040zinc;
    return C8_cost_040zinc;
  }

  get_num_pawnsC8() {
    /*
  Метод get_num_pawnC8 позволяет получить / рассчитать количество пэшек 
  (П-образных планок) для С8 профнастила на весь пролёт изгороди, 
  на основании следующих параметров:
  - double length (длина изгороди в метрах)
  - double length_pawn (длина пэшки в метрах)
  возвращает int num_pawnC8 (количество пэшек в штуках)
  */
    int num_pawnsC8 = (length / length_pawn).ceil();
    return num_pawnsC8;
  }

  get_length_pawnsC8() {
    /*
  Метод get_length_pawnsC8 позволяет получить / рассчитать погонаж пэшек 
  (П-образных планок) для С8 профнастила на весь пролёт изгороди, 
  на основании количества пэшек и следующих параметров:
  - количество пэшек из метода get_num_pawnsC8()
  - double length_pawn (длина одной пэшки в метрах),
  возвращает double length_pawnsC8 (погонаж пэшек (П-образных планок) для 
  С8 профнастила в мп)
  */
    double length_pawnsC8 = get_num_pawnsC8() * length_pawn;
    return length_pawnsC8;
  }

  get_pawnsC8_cost_mat() {
    /*
  Метод get_pawnsC8_cost_mat позволяет получить / рассчитать 
  стоимость матовых пэшек (П-образных планок) для С8 профнастила 
  на весь пролёт изгороди, на основании:
  - double get_length_pawnsC8() (метод расчета погонажа пэшек в мп)
  - double PriceHedge().pawnC8_price_mat (параметр класса 
  PriceHedge: стоимость матовых пэшек (П-образных планок) для С8 
  профнастила за 1м в руб),
  возвращает double pawnsC8_cost_mat (общую стоимость матовых пэшек 
  (П-образных планок) для С8 профнастила на весь пролёт изгороди
  */
    double pawnsC8_cost_mat =
        get_length_pawnsC8() * PriceHedge().pawnC8_price_mat;
    return pawnsC8_cost_mat;
  }

  get_pawnsC8_cost() {
    /*
  Метод get_pawnsC8_cost позволяет получить / рассчитать 
  стоимость глянцевых пэшек (П-образных планок) для С8 профнастила 
  на весь пролёт изгороди, на основании:
  - double get_length_pawnsC8() (метод расчета погонажа пэшек в мп)
  - double PriceHedge().pawnC8_price (параметр класса 
  PriceHedge: стоимость глянцевых пэшек (П-образных планок) для С8 
  профнастила за 1м в руб),
  возвращает double pawnsC8_cost (общую стоимость глянцевых пэшек 
  (П-образных планок) для С8 профнастила на весь пролёт изгороди
  */
    double pawnsC8_cost = get_length_pawnsC8() * PriceHedge().pawnC8_price;
    return pawnsC8_cost;
  }

  get_pawnsC8_cost_zinc() {
    /*
  Метод get_pawnsC8_cost_zinc позволяет получить / рассчитать 
  стоимость оцинкованных пэшек (П-образных планок) для С8 профнастила 
  на весь пролёт изгороди, на основании:
  - double get_length_pawnsC8() (метод расчета погонажа пэшек в мп)
  - double PriceHedge().pawnC8_price_zinc (параметр класса 
  PriceHedge: стоимость оцинкованных пэшек (П-образных планок) для С8 
  профнастила за 1м в руб),
  возвращает double pawnsC8_cost_zinc (общую стоимость оцинкованных пэшек 
  (П-образных планок) для С8 профнастила на весь пролёт изгороди
  */
    double pawnsC8_cost_zinc =
        get_length_pawnsC8() * PriceHedge().pawnC8_price_zinc;
    return pawnsC8_cost_zinc;
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

  get_areaMP20() {
    /*
  Метод get_areaMP20 позволяет получить / рассчитать площадь листов 
  профнастила MП20 для пролёта изгороди, на основании количества листов и 
  следующих параметров:
  - double heigth (высота изгороди в метрах)
  - double full_width (полная ширина листа в метрах)
  - количество листов из метода get_num_sheetsMP20(),
  возвращает double areaMP20 (площадь листов профнастила MП20 в м2)
  */
    double areaMP20 = (heigth * full_width) * get_num_sheetsMP20();
    return areaMP20;
  }

  get_MP20_cost_050mat() {
    /*
  Метод get_MP20_cost_050mat позволяет получить / рассчитать стоимость матовых 
  листов профнастила МП20 для изгороди в 0.50мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_050mat (параметр класса PriceHedge: 
  стоимость матового профнастила МП20 в 0.50мм толщине за 1м2 в руб)
  возвращает double MP20_cost_050mat (общая стоимость всех матовых листов 
  профнастила МП20 в 0.50мм толщине в руб)
  */
    double MP20_cost_050mat = get_areaMP20() * PriceHedge().MP20_price_050mat;
    return MP20_cost_050mat;
  }

  get_MP20_cost_045mat() {
    /*
  Метод get_MP20_cost_045mat позволяет получить / рассчитать стоимость матовых 
  листов профнастила МП20 для изгороди в 0.45мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_045mat (параметр класса PriceHedge: 
  стоимость матового профнастила МП20 в 0.45мм толщине за 1м2 в руб)
  возвращает double MP20_cost_045mat (общая стоимость всех матовых листов 
  профнастила МП20 в 0.45мм толщине в руб)
  */
    double MP20_cost_045mat = get_areaMP20() * PriceHedge().MP20_price_045mat;
    return MP20_cost_045mat;
  }

  get_MP20_cost_050() {
    /*
  Метод get_MP20_cost_050 позволяет получить / рассчитать стоимость глянцевых 
  листов профнастила МП20 для изгороди в 0.50мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_050 (параметр класса PriceHedge: 
  стоимость глянцевого профнастила МП20 в 0.50мм толщине за 1м2 в руб)
  возвращает double MP20_cost_050 (общая стоимость всех глянцевых листов 
  профнастила МП20 в 0.50мм толщине в руб)
  */
    double MP20_cost_050 = get_areaMP20() * PriceHedge().MP20_price_050;
    return MP20_cost_050;
  }

  get_MP20_cost_045() {
    /*
  Метод get_MP20_cost_045 позволяет получить / рассчитать стоимость глянцевых 
  листов профнастила МП20 для изгороди в 0.45мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_045 (параметр класса PriceHedge: 
  стоимость глянцевого профнастила МП20 в 0.45мм толщине за 1м2 в руб)
  возвращает double MP20_cost_045 (общая стоимость всех глянцевых листов 
  профнастила МП20 в 0.45мм толщине в руб)
  */
    double MP20_cost_045 = get_areaMP20() * PriceHedge().MP20_price_045;
    return MP20_cost_045;
  }

  get_MP20_cost_040() {
    /*
  Метод get_MP20_cost_040 позволяет получить / рассчитать стоимость глянцевых 
  листов профнастила МП20 для изгороди в 0.40мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_040 (параметр класса PriceHedge: 
  стоимость глянцевого профнастила МП20 в 0.40мм толщине за 1м2 в руб)
  возвращает double MP20_cost_040 (общая стоимость всех глянцевых листов 
  профнастила МП20 в 0.40мм толщине в руб)
  */
    double MP20_cost_040 = get_areaMP20() * PriceHedge().MP20_price_040;
    return MP20_cost_040;
  }

  get_MP20_cost_035() {
    /*
  Метод get_MP20_cost_035 позволяет получить / рассчитать стоимость глянцевых 
  листов профнастила МП20 для изгороди в 0.35мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_035 (параметр класса PriceHedge: 
  стоимость глянцевого профнастила МП20 в 0.35мм толщине за 1м2 в руб)
  возвращает double MP20_cost_035 (общая стоимость всех глянцевых листов 
  профнастила МП20 в 0.35мм толщине в руб)
  */
    double MP20_cost_035 = get_areaMP20() * PriceHedge().MP20_price_035;
    return MP20_cost_035;
  }

  get_MP20_cost_050zinc() {
    /*
  Метод get_MP20_cost_050zinc позволяет получить / рассчитать стоимость 
  оцинкованных листов профнастила МП20 для изгороди в 0.50мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_050zinc (параметр класса PriceHedge: 
  стоимость оцинкованного профнастила МП20 в 0.50мм толщине за 1м2 в руб)
  возвращает double MP20_cost_050zinc (общая стоимость всех оцинкованных листов 
  профнастила МП20 в 0.50мм толщине в руб)
  */
    double MP20_cost_050zinc = get_areaMP20() * PriceHedge().MP20_price_050zinc;
    return MP20_cost_050zinc;
  }

  get_MP20_cost_045zinc() {
    /*
  Метод get_MP20_cost_045zinc позволяет получить / рассчитать стоимость 
  оцинкованных листов профнастила МП20 для изгороди в 0.45мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_045zinc (параметр класса PriceHedge: 
  стоимость оцинкованного профнастила МП20 в 0.45мм толщине за 1м2 в руб)
  возвращает double MP20_cost_045zinc (общая стоимость всех оцинкованных листов 
  профнастила МП20 в 0.45мм толщине в руб)
  */
    double MP20_cost_045zinc = get_areaMP20() * PriceHedge().MP20_price_045zinc;
    return MP20_cost_045zinc;
  }

  get_MP20_cost_040zinc() {
    /*
  Метод get_MP20_cost_040zinc позволяет получить / рассчитать стоимость 
  оцинкованных листов профнастила МП20 для изгороди в 0.40мм толщине, на основании:
  - double get_sheets_areaMP20() (метод расчета площади профнастила МП20 в м2)
  - double PriceHedge().MP20_price_040zinc (параметр класса PriceHedge: 
  стоимость оцинкованного профнастила МП20 в 0.40мм толщине за 1м2 в руб)
  возвращает double MP20_cost_040zinc (общая стоимость всех оцинкованных листов 
  профнастила МП20 в 0.40мм толщине в руб)
  */
    double MP20_cost_040zinc = get_areaMP20() * PriceHedge().MP20_price_040zinc;
    return MP20_cost_040zinc;
  }

  get_num_pawnsMP20() {
    /*
  Метод get_num_pawnsMP20 позволяет получить / рассчитать количество пэшек 
  (П-образных планок) для МП20 профнастила на весь пролёт изгороди, 
  на основании следующих параметров:
  - double length (длина изгороди в метрах)
  - double length_pawn (длина пэшки в метрах)
  возвращает int num_pawnMP20 (количество пэшек в штуках)
  */
    int num_pawnsMP20 = (length / length_pawn).ceil();
    return num_pawnsMP20;
  }

  get_length_pawnsMP20() {
    /*
  Метод get_length_pawnsMP20 позволяет получить / рассчитать погонаж пэшек 
  (П-образных планок) для МП20 профнастила на весь пролёт изгороди, 
  на основании количества пэшек и следующих параметров:
  - количество пэшек из метода get_num_pawnsMP20()
  - double length_pawn (длина одной пэшки в метрах),
  возвращает double length_pawnsMP20 (погонаж пэшек (П-образных планок) для 
  МП20 профнастила в мп)
  */
    double length_pawnsMP20 = get_num_pawnsMP20() * length_pawn;
    return length_pawnsMP20;
  }

  get_pawnsMP20_cost_mat() {
    /*
  Метод get_pawnsMP20_cost_mat позволяет получить / рассчитать 
  стоимость матовых пэшек (П-образных планок) для МП20 профнастила 
  на весь пролёт изгороди, на основании:
  - double get_length_pawnsMP20() (метод расчета погонажа пэшек в мп)
  - double PriceHedge().pawnMP20_price_mat (параметр класса 
  PriceHedge: стоимость матовых пэшек (П-образных планок) для МП20 
  профнастила за 1м в руб),
  возвращает double pawnsMP20_cost_mat (общую стоимость матовых пэшек 
  (П-образных планок) для МП20 профнастила на весь пролёт изгороди
  */
    double pawnsMP20_cost_mat =
        get_length_pawnsMP20() * PriceHedge().pawnMP20_price_mat;
    return pawnsMP20_cost_mat;
  }

  get_pawnsMP20_cost() {
    /*
  Метод get_pawnsMP20_cost позволяет получить / рассчитать 
  стоимость глянцевых пэшек (П-образных планок) для МП20 профнастила 
  на весь пролёт изгороди, на основании:
  - double get_length_pawnsMP20() (метод расчета погонажа пэшек в мп)
  - double PriceHedge().pawnMP20_price (параметр класса 
  PriceHedge: стоимость глянцевых пэшек (П-образных планок) для МП20 
  профнастила за 1м в руб),
  возвращает double pawnsMP20_cost (общую стоимость глянцевых пэшек 
  (П-образных планок) для МП20 профнастила на весь пролёт изгороди
  */
    double pawnsMP20_cost =
        get_length_pawnsMP20() * PriceHedge().pawnMP20_price;
    return pawnsMP20_cost;
  }

  get_pawnsMP20_cost_zinc() {
    /*
  Метод get_pawnsMP20_cost_zinc позволяет получить / рассчитать 
  стоимость оцинкованных пэшек (П-образных планок) для МП20 профнастила 
  на весь пролёт изгороди, на основании:
  - double get_length_pawnsMP20() (метод расчета погонажа пэшек в мп)
  - double PriceHedge().pawnMP20_price_zinc (параметр класса 
  PriceHedge: стоимость оцинкованных пэшек (П-образных планок) для МП20 
  профнастила за 1м в руб),
  возвращает double pawnsMP20_cost_zinc (общую стоимость оцинкованных пэшек 
  (П-образных планок) для МП20 профнастила на весь пролёт изгороди
  */
    double pawnsMP20_cost_zinc =
        get_length_pawnsMP20() * PriceHedge().pawnMP20_price_zinc;
    return pawnsMP20_cost_zinc;
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

  get_fence_double_sided_cost_040mat() {
    /*
  Метод get_fence_double_sided_cost_040mat позволяет получить / рассчитать 
  стоимость двухстороннего матового 0.40мм штакета для изгороди, на основании:
  - double get_length_fence() (метод расчета погонажа штакетника в мп)
  - double PriceHedge().fence_double_sided_price_040mat (параметр класса 
  PriceHedge: стоимость двухстороннего матового 0.40мм штакета за 1м в руб),
  возвращает double fence_double_sided_cost_040mat (общая стоимость 
  двухстороннего матового 0.40мм штакета в руб)
  */
    double fence_double_sided_cost_040mat =
        get_length_fence() * PriceHedge().fence_double_sided_price_040mat;
    return fence_double_sided_cost_040mat;
  }

  get_fence_double_sided_cost_040() {
    /*
  Метод get_fence_double_sided_cost_040 позволяет получить / рассчитать 
  стоимость двухстороннего глянцевого 0.40мм штакета для изгороди, на основании:
  - double get_length_fence() (метод расчета погонажа штакетника в мп)
  - double PriceHedge().fence_double_sided_price_040 (параметр класса 
  PriceHedge: стоимость двухстороннего глянцевого 0.40мм штакета за 1м в руб),
  возвращает double fence_double_sided_cost_040 (общая стоимость двухстороннего 
  глянцевого 0.40мм штакета в руб)
  */
    double fence_double_sided_cost_040 =
        get_length_fence() * PriceHedge().fence_double_sided_price_040;
    return fence_double_sided_cost_040;
  }
}

void main() {
  final hedge = Hedge(100, 1.5);
  final profileC8 = ProfileC8(100, 1.5);
  final profileMP20 = ProfileMP20(100, 1.5);
  final fence = Fence(100, 1.5, 0.040);

  print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$hedge
Количество листов С8:                   ${profileC8.heigth} м = ${profileC8.get_num_sheetsC8()} шт
Площадь листов С8:                      ${profileC8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.50мм:            ${profileC8.get_C8_cost_050mat().toStringAsFixed(2)} руб
Стоимость С8 Матовый 0.45мм:            ${profileC8.get_C8_cost_045mat().toStringAsFixed(2)} руб
Стоимость С8 Глянец 0.50мм:             ${profileC8.get_C8_cost_050().toStringAsFixed(2)} руб
Стоимость С8 Глянец 0.45мм:             ${profileC8.get_C8_cost_045().toStringAsFixed(2)} руб
Стоимость С8 Глянец 0.40мм:             ${profileC8.get_C8_cost_040().toStringAsFixed(2)} руб
Стоимость С8 Глянец 0.35мм:             ${profileC8.get_C8_cost_035().toStringAsFixed(2)} руб
Стоимость С8 Оцинк 0.50мм:              ${profileC8.get_C8_cost_050zinc().toStringAsFixed(2)} руб
Стоимость С8 Оцинк 0.45мм:              ${profileC8.get_C8_cost_045zinc().toStringAsFixed(2)} руб
Стоимость С8 Оцинк 0.40мм:              ${profileC8.get_C8_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                    ${profileC8.get_num_pawnsC8()} шт = ${profileC8.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:             ${profileC8.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб
Стоимость Глянцевых Пэшек С8:           ${profileC8.get_pawnsC8_cost().toStringAsFixed(2)} руб
Стоимость Оцинкованных Пэшек С8:        ${profileC8.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество листов МП20:                 ${profileMP20.heigth} м = ${profileMP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                    ${profileMP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.50мм:          ${profileMP20.get_MP20_cost_050mat().toStringAsFixed(2)} руб
Стоимость МП20 Матовый 0.45мм:          ${profileMP20.get_MP20_cost_045mat().toStringAsFixed(2)} руб
Стоимость МП20 Глянец 0.50мм:           ${profileMP20.get_MP20_cost_050().toStringAsFixed(2)} руб
Стоимость МП20 Глянец 0.45мм:           ${profileMP20.get_MP20_cost_045().toStringAsFixed(2)} руб
Стоимость МП20 Глянец 0.40мм:           ${profileMP20.get_MP20_cost_040().toStringAsFixed(2)} руб
Стоимость МП20 Глянец 0.35мм:           ${profileMP20.get_MP20_cost_035().toStringAsFixed(2)} руб
Стоимость МП20 Оцинк 0.50мм:            ${profileMP20.get_MP20_cost_050zinc().toStringAsFixed(2)} руб
Стоимость МП20 Оцинк 0.45мм:            ${profileMP20.get_MP20_cost_045zinc().toStringAsFixed(2)} руб
Стоимость МП20 Оцинк 0.40мм:            ${profileMP20.get_MP20_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                  ${profileMP20.get_num_pawnsMP20()} шт = ${profileMP20.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:           ${profileMP20.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб
Стоимость Глянцевых Пэшек МП20:         ${profileMP20.get_pawnsMP20_cost().toStringAsFixed(2)} руб
Стоимость Оцинкованных Пэшек МП20:      ${profileMP20.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество штакетин:                    ${fence.heigth} м = ${fence.get_num_fence()} шт
Погонаж штакетник:                      ${fence.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х матового 0.40мм штакета:   ${fence.get_fence_double_sided_cost_040mat().toStringAsFixed(2)} руб
Стоимость 2х глянцевого 0.40мм штакета: ${fence.get_fence_double_sided_cost_040().toStringAsFixed(2)} руб''');

  // print('\n${PriceDrainage().toString()}');
  // print('${PriceHedge().toString()}');
}
