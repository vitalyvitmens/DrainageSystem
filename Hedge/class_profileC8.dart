import '../Price/class_price_hedge.dart';
import '../Price/class_price_screws.dart';
import 'class_hedge.dart';

class ProfileC8 extends Hedge {
  /*
  Класс ProfileC8 (профнастил С8), он наследуется от класса Hedge (изгородь) 
  и принимает на вход свойства (параметры) родителя:
  - double length (длина изгороди в метрах)
  - double heigth (высота изгороди в метрах),
  а так же свои собственные свойства (параметры):
  - double full_width (полную ширину листа в метрах)
  - double useful_width (полезную ширину листа в метрах)
  - int screw_across (количество саморезов на 1 прожилину,
  и имеет методы для попролётного расчета количества листов С8 и их площади
  */
  final double full_width = 1.20;
  final double useful_width = 1.15;
  final int screws_across = 5;

  ProfileC8(super.length, super.heigth, super.color, super.thickness);

  @override
  String toString() {
    return '''
Длина забора:                             $length м 
Высота забора:                            $heigth м
''';
  }

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

  get_num_screwsC8() {
    /*
  Метод get_num_screwsC8 позволяет получить / рассчитать 
  количество саморезов для крепежа профнастила С8 для изгороди, на основании:
  - int num_rows_across (количество рядов прожилин в шт)
  - int screws_across (количество саморезов на 1 прожилину,
  одного листа профнастила С8 в шт),
  возвращает int num_screwsC8 (количество саморезов для крепежа 
  профнастила С8 для изгороди в шт кратно 1 упаковке саморезов = 250шт)
  */
    int num_screwsC8 =
        ((get_num_sheetsC8() * (num_rows_across * screws_across)) / 250)
                .ceil() *
            250;
    return num_screwsC8;
  }

  get_screwsC8_cost() {
    /*
  Метод get_screwsC8_cost позволяет получить / рассчитать 
  стоимость саморезов металл по металу 5.5х19 для крепления С8 профнастила 
  на весь пролёт изгороди, на основании:
  - get_num_screwsC8() (метод расчета количества листов профнастила С8 в шт)
  - Screws().screw_55x19 (параметр класса Screws: 
  стоимость самореза металл по металу 5.5х19 за 1шт в руб),
  возвращает double screwsC8_cost (общую стоимость саморезов для крепежа 
  профнастила С8 для изгороди в шт кратно 1 упаковке саморезов = 250шт,
  на весь пролёт изгороди в руб)
  */
    double screwsC8_cost = get_num_screwsC8() * Screws().screw_55x19;
    return screwsC8_cost;
  }
}
