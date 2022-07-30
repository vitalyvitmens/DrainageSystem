import '../Price/class_price_hedge.dart';
import '../Price/class_price_screws.dart';
import 'class_hedge.dart';

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
  final int screws_across = 5;

  ProfileMP20(super.length, super.heigth, super.color, super.thickness);

  @override
  String toString() {
    return '''
Длина забора:                             $length м 
Высота забора:                            $heigth м
''';
  }

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

  get_num_screwsMP20() {
    /*
  Метод get_num_screwsMP20 позволяет получить / рассчитать 
  количество саморезов для крепежа профнастила МП20 для изгороди, на основании:
  - int num_rows_across (количество рядов прожилин в шт)
  - int screws_across (количество саморезов на 1 прожилину,
  одного листа профнастила МП20 в шт),
  возвращает int num_screwsMP20 (количество саморезов для крепежа 
  профнастила МП20 для изгороди в шт кратно 1 упаковке саморезов = 250шт)
  */
    int num_screwsMP20 =
        ((get_num_sheetsMP20() * (Hedge.num_rows_across * screws_across)) / 250)
                .ceil() *
            250;
    return num_screwsMP20;
  }

  get_screwsMP20_cost() {
    /*
  Метод get_screwsMP20_cost позволяет получить / рассчитать 
  стоимость саморезов металл по металу 5.5х19 для крепления МП20 профнастила 
  на весь пролёт изгороди, на основании:
  - get_num_screwsMP20() (метод расчета количества листов профнастила МП20 в шт)
  - Screws().screw_55x19 (параметр класса Screws: 
  стоимость самореза металл по металу 5.5х19 за 1шт в руб),
  возвращает double screwsMP20_cost (общую стоимость саморезов для крепежа 
  профнастила МП20 для изгороди в шт кратно 1 упаковке саморезов = 250шт,
  на весь пролёт изгороди в руб)
  */
    double screwsMP20_cost = get_num_screwsMP20() * Screws().screw_55x19;
    return screwsMP20_cost;
  }
}
