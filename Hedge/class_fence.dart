import '../Price/class_price_hedge.dart';
import '../Price/class_price_screws.dart';
import 'class_hedge.dart';

class Fence extends Hedge {
  /*
  Класс Fence (штакетник), он наследуется от класса Hedge (изгородь) 
  и принимает на вход свойства (параметры) родителя:
  - double length (длина изгороди в метрах)
  - double heigth (высота изгороди в метрах),
  а так же свои собственные свойства (параметры):
  - double gap (зазор между двумя соседними штакетинами в метрах)
  - double width (ширина штакетника в метрах)
  - int screw_across (количество саморезов на 1 прожилину
  - int filling (заполнение штакета при монтаже с одной строны или с двух 
  сторон, по умолчанию заполнение только с одной стороны),
  и имеет методы для попролётного расчета количества штакетника и его погонаж
  */
  final double gap;
  static const double width = 0.110;
  static const int screws_across = 2;
  final int filling;

  Fence(super.length, super.heigth, this.gap, super.color, super.thickness,
      this.filling);

  @override
  String toString() {
    return '''
Длина забора:                             $length м  
Высота забора:                            $heigth м
Зазор между штакетником:                  ${gap * 100} cм
Заполнение штакета:                       ${{
      if (filling == 1)
        'одностороннее'
      else if (filling == 2)
        'двухстороннее'
      else
        {}
    }} 
''';
  }

  get_num_fence() {
    /*
  Метод get_num_fence позволяет получить / рассчитать количество штакетин
  для пролёта изгороди, на основании следующих параметров:
  - double length (длина изгороди в метрах)
  - double width (ширина штакетника в метрах)
  - double gap (зазор между двумя соседними штакетинами в метрах)
  возвращает int num_fence (количество штакетин в штуках)
  - int filling (заполнение штакета при монтаже с одной строны или с двух 
  сторон)
  */
    int num_fence = (length / (width + gap)).ceil() * filling;
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
        get_length_fence() * PriceHedge.fence_double_sided_price_040mat;
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
        get_length_fence() * PriceHedge.fence_double_sided_price_040;
    return fence_double_sided_cost_040;
  }

  get_num_screws_fence() {
    /*
  Метод get_num_screws_fence позволяет получить / рассчитать 
  количество саморезов для крепежа штакета изгороди, на основании:
  - int num_rows_across (количество рядов прожилин в шт)
  - int screws_across (количество саморезов на 1 прожилину,
  одного штакета в шт),
  возвращает int num_screws_fence (количество саморезов для крепежа 
  штакета изгороди в шт кратно 1 упаковке саморезов = 250шт)
  */
    int num_screws_fence =
        ((get_num_fence() * (Hedge.num_rows_across * screws_across)) / 250)
                .ceil() *
            250;
    return num_screws_fence;
  }

  get_screws_fence_cost() {
    /*
  Метод get_screws_fence_cost позволяет получить / рассчитать 
  стоимость саморезов металл по металу 5.5х19 для крепления штакета 
  на весь пролёт изгороди, на основании:
  - get_num_screws_fence() (метод расчета количества штакета в шт)
  - Screws().screw_55x19 (параметр класса Screws: 
  стоимость самореза металл по металу 5.5х19 за 1шт в руб),
  возвращает double screws_fence_cost (общую стоимость саморезов для крепежа 
  штакета изгороди в шт кратно 1 упаковке саморезов = 250шт,
  на весь пролёт изгороди в руб)
  */
    double screws_fence_cost = get_num_screws_fence() * Screws.screw_55x19;
    return screws_fence_cost;
  }

  get_result_hedge() {
    if (length > 0) {
      if (color == Color.RAL3005_RAL3005 ||
          color == Color.RAL6005_RAL6005 ||
          color == Color.RAL8017_RAL8017 ||
          color == Color.RAL9003_RAL9003) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n${toString()}
Количество штакетин:                      ${heigth} м = ${get_num_fence()} шт
Погонаж штакетник:                        ${get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х глянцевого 0.40мм штакета:   ${get_fence_double_sided_cost_040().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${get_num_screws_fence()} шт = ${get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
      } else if (color == Color.RAL7024MAT_RAL7024MAT) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n${toString()}
Количество штакетин:                      ${heigth} м = ${get_num_fence()} шт
Погонаж штакетник:                        ${get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х матового 0.40мм штакета:     ${get_fence_double_sided_cost_040mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${get_num_screws_fence()} шт = ${get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else {}
  }
}
