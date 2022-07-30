import '../Hedge/class_hedge.dart';
import '../Hedge/class_profileC8.dart';
import '../Price/class_price_hedge.dart';
import '../Price/class_price_plank.dart';
import '../Price/class_price_screws.dart';

abstract class Hemming {
  /*
  Абстрактный класс Hemming (подшива), он принимает 
  на вход следующие свойства (параметры):
  - double length (длина подшивы кровельного свеса в метрах)
  - double depth (глубина подшивы кровельного свеса в метрах)
  - double color (Color (цвет) из Enum (перечисления))
  - double thickness (толщина кровельного свеса в метрах)
  - double length_Lplank (длина L-планки в метрах)
  */
  final double length;
  final double depth;
  final Color color;
  final double thickness;
  final double length_Lplank = 2.0;
  final double limb_Lplank = 0.05;
  static double clamp = 0.01;

  Hemming(this.length, this.depth, this.color, this.thickness);

  @override
  String toString() {
    return '''
Длина подшивы кровельного свеса:          $length м 
Глубина подшивы кровельного свеса:        $depth м
''';
  }

  get_num_sheetsC8() {
    /*
  Метод get_num_sheetsC8 позволяет получить / рассчитать количество листов 
  профнастила С8 для подшивы кровельных свесов, на основании 
  следующих параметров:
  - double length (длина подшивы кровельного свеса в метрах)
  - ProfileC8.useful_width (полезная ширина листа профнастила С8 в метрах из
  класса ProfileC8 (профнастил С8))
  возвращает int num_sheetsC8 (количество листов профнастила С8 в штуках)
  */
    int num_sheetsC8 = (length / ProfileC8.useful_width).ceil();
    return num_sheetsC8;
  }

  get_areaC8() {
    /*
  Метод get_areaC8 позволяет получить / рассчитать площадь листов 
  профнастила С8 для подшивы кровельных свесов, на основании 
  количества листов и следующих параметров:
  - double depth (глубина подшивы кровельного свеса в метрах)
  - ProfileC8.useful_width (полная ширина листа профнастила С8 в метрах из
  класса ProfileC8 (профнастил С8))
  - количество листов из метода get_num_sheetsC8(),
  возвращает double areaC8 (площадь листов профнастила С8 в м2)
  */
    double areaC8 = (depth * ProfileC8.full_width) * get_num_sheetsC8();
    return areaC8;
  }

  get_C8_cost_050mat() {
    /*
  Метод get_C8_cost_050mat позволяет получить / рассчитать стоимость матовых 
  листов профнастила С8 для подшивы кровельных свесов в 0.50мм толщине, 
  на основании:
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
  листов профнастила С8 для подшивы кровельных свесов в 0.45мм толщине, 
  на основании:
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
  листов профнастила С8 для подшивы кровельных свесов в 0.50мм толщине, 
  на основании:
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
  листов профнастила С8 для подшивы кровельных свесов в 0.45мм толщине, 
  на основании:
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
  листов профнастила С8 для подшивы кровельных свесов в 0.40мм толщине, 
  на основании:
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
  листов профнастила С8 для подшивы кровельных свесов в 0.35мм толщине, 
  на основании:
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
  оцинкованных листов профнастила С8 для подшивы кровельных свесов в 0.50мм 
  толщине, на основании:
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
  оцинкованных листов профнастила С8 для подшивы кровельных свесов в 0.45мм 
  толщине, на основании:
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
  оцинкованных листов профнастила С8 для подшивы кровельных свесов в 0.40мм 
  толщине, на основании:
  - double get_sheets_areaC8() (метод расчета площади профнастила С8 в м2)
  - double PriceHedge().C8_price_040zinc (параметр класса PriceHedge: 
  стоимость оцинкованного профнастила С8 в 0.40мм толщине за 1м2 в руб)
  возвращает double C8_cost_040zinc (общая стоимость всех оцинкованных листов 
  профнастила С8 в 0.40мм толщине в руб)
  */
    double C8_cost_040zinc = get_areaC8() * PriceHedge().C8_price_040zinc;
    return C8_cost_040zinc;
  }

  get_num_Lplank() {
    /*
  Метод get_num_Lplank позволяет получить / рассчитать количество L-планок
  для кровельного свеса, 
  на основании следующих параметров:
  - double length (длина кровельного свеса в метрах)
  - double length_Lplank (длина L-планки в метрах)
  возвращает int num_Lplank (количество L-планок в штуках)
  */
    int num_Lplank = ((length / length_Lplank) * 1.05).ceil();
    return num_Lplank;
  }

  get_length_Lplanks() {
    /*
  Метод get_length_Lplanks позволяет получить / рассчитать погонаж L-планок для 
  кровельного свеса, на основании количества L-планок и следующих параметров:
  - количество L-планок из метода get_num_Lplank()
  - double length_Lplank (длина одной пэшки в метрах),
  возвращает double length_Lplanks (погонаж L-планок для 
  кровельного свеса в мп)
  */
    double length_Lplanks = get_num_Lplank() * length_Lplank;
    return length_Lplanks;
  }

  get_Lplank_cost_mat() {
    /*
  Метод get_Lplank_cost_mat позволяет получить / рассчитать 
  стоимость матовых L-планок для кровельного свеса, на основании:
  - double get_length_Lplanks() (метод расчета погонажа L-планок в мп)
  - double PricePlank().plank_price_mat (параметр класса 
  PricePlank: стоимость матовых L-планок для кровельного свеса за 1м2 в руб),
  возвращает double Lplank_cost_mat (общую стоимость матовых L-планок для 
  кровельного свеса)
  */
    double Lplank_cost_mat = get_length_Lplanks() *
        PricePlank().plank_price_mat *
        (thickness * limb_Lplank * clamp);
    return Lplank_cost_mat;
  }

  get_Lplank_cost_050() {
    /*
  Метод get_Lplank_cost_050 позволяет получить / рассчитать 
  стоимость глянцевых L-планок 0.50мм для кровельного свеса, на основании:
  - double get_length_Lplanks() (метод расчета погонажа L-планок в мп)
  - double PricePlank().plank_price_050 (параметр класса 
  PricePlank: стоимость глянцевых 0.50мм L-планок для кровельного свеса 
  за 1м2 в руб), возвращает double Lplank_cost_050 (общую стоимость 
  глянцевых 0.50мм L-планок для кровельного свеса)
  */
    double Lplank_cost_050 = get_length_Lplanks() *
        PricePlank().plank_price_050 *
        (thickness * limb_Lplank * clamp);
    return Lplank_cost_050;
  }

  get_Lplank_cost() {
    /*
  Метод get_Lplank_cost позволяет получить / рассчитать 
  стоимость глянцевых L-планок 0.40мм для кровельного свеса, на основании:
  - double get_length_Lplanks() (метод расчета погонажа L-планок в мп)
  - double PricePlank().plank_price (параметр класса 
  PricePlank: стоимость глянцевых 0.40мм L-планок для кровельного свеса 
  за 1м2 в руб), возвращает double Lplank_cost (общую стоимость глянцевых 
  0.40мм L-планок для кровельного свеса)
  */
    double Lplank_cost =
        (get_length_Lplanks() * (thickness + limb_Lplank + clamp)) *
            PricePlank().plank_price;
    return Lplank_cost;
  }

  get_Lplank_cost_zinc() {
    /*
  Метод get_Lplank_cost_zinc позволяет получить / рассчитать 
  стоимость оцинкованных L-планок 0.40мм для кровельного свеса, на основании:
  - double get_length_Lplanks() (метод расчета погонажа L-планок в мп)
  - double PricePlank().plank_price_zinc (параметр класса 
  PricePlank: стоимость оцинкованных 0.40мм L-планок для кровельного свеса 
  за 1м2 в руб), возвращает double Lplank_cost_zinc (общую стоимость 
  оцинкованных 0.40мм L-планок для кровельного свеса)
  */
    double Lplank_cost_zinc = get_length_Lplanks() *
        PricePlank().plank_price_zinc *
        (thickness * limb_Lplank * clamp);
    return Lplank_cost_zinc;
  }

  get_num_screws_hemming() {
    /*
  Метод get_num_screwsC8 позволяет получить / рассчитать 
  количество саморезов для крепежа профнастила С8 для кровельного свеса, 
  на основании:
  - int get_num_sheetsC8() (метод получения количества листов профнастила С8
  для кровельного свеса в шт)
  - int num_rows_across (количество рядов прожилин в шт)
  - int screws_across (количество саморезов на 1 прожилину,
  одного листа профнастила С8 в шт)
  - (get_length_Lplanks() * 6)) (метод расчета длины L-планок * 6 саморезов 
  на 1мп L-планки),
  возвращает int num_screws_hemming (количество саморезов для крепежа 
  профнастила С8 и L-планок для кровельного свеса в шт кратно 
  1 упаковке саморезов = 250шт)
  */
    int num_screws_hemming = (get_num_sheetsC8() *
                (Hedge.num_rows_across * ProfileC8.screws_across) +
            (get_length_Lplanks() * 6))
        .ceil();
    return num_screws_hemming;
  }

  get_screws_hemming_cost() {
    /*
  Метод get_screws_hemming_cost позволяет получить / рассчитать 
  стоимость саморезов металл по дереву 4.8х29 для крепления С8 профнастила и 
  L-планок для кровельного свеса, на основании:
  - get_num_screws_hemming() (метод расчета количества саморезов для крпеления 
  профнастила С8 и L-планок в шт)
  - Screws().screw_55x19 (параметр класса Screws: 
  стоимость самореза металл по дереву 4.8х29 за 1шт в руб),
  возвращает double screws_hemming_cost (общую стоимость саморезов для крепежа 
  профнастила С8 и L-планок для кровельного свеса в шт кратно 1 упаковке 
  саморезов = 250шт, на весь кровельный свес в руб)
  */
    double screws_hemming_cost =
        get_num_screws_hemming() * Screws().screw_48x29;
    return screws_hemming_cost;
  }
}
