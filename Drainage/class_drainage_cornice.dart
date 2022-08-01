import '../Price/class_price_drainage.dart';
import 'methods_calculating_elements_drainage.dart';
import 'methods_cost_calculation_elements_drainage.dart';

class DrainageCornice {
  /*
  Класс DrainageCornice (водосточный карниз), он принимает 
  на вход следующие параметры:
  - double cornice_length (длина карниза в метрах)
  - double downpipe_height (высота от карниза до земли в метрах)
  - int num_downpipe (количество водосточных стояков карниза),
  а так же имеет изначально заданные параметры:
  - int length_gutter (длина 1шт желоба (L=3000) в метрах)
  - int length_big_pipe (длина 1шт большой трубы (L=3000) в метрах)
  - int length_small_pipe (длина 1шт малой трубы (L=1000) в метрах)
  - double gutter_holder_pitch (шаг установки держателей желоба в метрах)
  - double pipe_holder_pitch (шаг установки держателей трубы в метрах)
  - int gutter_angles (количество углов желоба в штуках)
  и имеет ряд методов для покарнизного расчета элементов водосточной системы
  */
  final double cornice_length;
  final double downpipe_height;
  final int num_downpipe;
  final int length_gutter = 3;
  final int length_big_pipe = 3;
  final int length_small_pipe = 1;
  double gutter_holder_pitch = 0.5;
  double pipe_holder_pitch = 1.0;
  int gutter_angle = 0;

  DrainageCornice(
    this.cornice_length,
    this.downpipe_height,
    this.num_downpipe,
  );

  @override
  String toString() {
    return '''
Длина карниза:                   $cornice_length м 
Высота от карниза до земли:      $downpipe_height м
Количество водосточных стояков:  $num_downpipe шт
Длина желоба:                    $length_gutter м 
Длина большой трубы:             $length_big_pipe м 
Длина малой трубы:               $length_small_pipe м 
Шаг крепления держателей желоба: $gutter_holder_pitch м
Шаг крепления держателей трубы:  $pipe_holder_pitch 
Количество углов желоба:         $gutter_angle шт
''';
  }

  get_gutters() {
    /*
  Метод  get_gutters позволяет получить / рассчитать количество желобов 
  на водосточном карнизе, на основании следующих параметров:
  - double cornice_length (длины карниза в метрах)
  - int length_gutter (константы длины 1шт желоба в метрах)
  возвращает double gutters (количество желобов в штуках)
  */
    double gutters = cornice_length / length_gutter;
    return gutters;
  }

  get_gutters_cost() {
    /*
  Метод  get_gutters_cost позволяет получить / рассчитать стоимость желобов 
  на водосточном карнизе, на основании:
  - double get_gutters() (метод расчета количества желобов в штуках)
  - double PriceDrainage().gutter_price (параметр класса PriceDrainage: 
  стоимость желоба за 1шт в руб)
  возвращает double gutters_cost (общая стоимость всех желобов на карнизе в руб)
  */
    double gutters_cost = (get_gutters()).ceil() * PriceDrainage().gutter_price;
    return gutters_cost;
  }

  get_gutter_connectors() {
    /*
  Метод  get_gutter_connectors позволяет получить / рассчитать количество 
  соединителей желоба, на основании следующих параметров:
  - double cornice_length (длины карниза в метрах)
  - int length_gutter (константы длины 1шт желоба в метрах)
  возвращает int gutter_connectors (количество соединителей желоба в штуках)
  */
    int gutter_connectors = (cornice_length / length_gutter).ceil() - 1;
    return gutter_connectors;
  }

  get_gutter_connectors_cost() {
    /*
  Метод  get_gutter_connectors_cost позволяет получить / рассчитать стоимость 
  соединителей желоба на водосточном карнизе, на основании:
  - double get_gutter_connectors() (метод расчета количества соединителей 
  желоба в штуках)
  - double PriceDrainage().gutter_connector_price (параметр класса PriceDrainage: 
  стоимость соединителя желоба за 1шт в руб)
  возвращает double gutter_connectors_cost (общая стоимость всех соединителей 
  желоба на карнизе в руб)
  */
    double gutter_connectors_cost =
        get_gutter_connectors() * PriceDrainage().gutter_connector_price;
    return gutter_connectors_cost;
  }

  get_plugs() {
    /*
  Метод  get_plugs позволяет получить / рассчитать количество 
  заглушек желоба, на основании определенных условий:
  - int (gutter_angle == 0) (когда углы желоба отсутствуют)
  - int (gutter_angle == 1) (когда имеется один угол желоба)
  - int (gutter_angle == 2) (когда имеется два угла желоба)
  возвращает int plugs (количество заглушек желоба в штуках)
  */
    if (gutter_angle == 0) {
      int plugs = 2;
      return plugs;
    } else if (gutter_angle == 1) {
      int plugs = 1;
      return plugs;
    } else if (gutter_angle == 2) {
      int plugs = 0;
      return plugs;
    } else {
      int plugs = 0;
      return plugs;
    }
  }

  get_plugs_cost() {
    /*
  Метод  get_plugs_cost позволяет получить / рассчитать стоимость 
  заглушек желоба на водосточном карнизе, на основании:
  - double get_plugs() (метод расчета количества заглушек в штуках)
  - double PriceDrainage().plug_price (параметр класса PriceDrainage: 
  стоимость заглушки за 1шт в руб)
  возвращает double plugs_cost (общая стоимость всех заглушек на карнизе в руб)
  */
    double plugs_cost = get_plugs() * PriceDrainage().plug_price;
    return plugs_cost;
  }

  get_gutter_holders() {
    /*
  Метод  get_gutter_holders позволяет получить / рассчитать количество 
  держателей желоба, на основании следующих параметров:
  - double cornice_length (длины карниза в метрах)
  - double gutter_holder_pitch (переменной шага установки держателей 
  желоба в метрах)
  возвращает int gutter_holders (количество держателей желоба в штуках)
  */
    int gutter_holders = (cornice_length / gutter_holder_pitch).ceil() + 1;
    return gutter_holders;
  }

  get_gutter_holders_cost() {
    /*
  Метод  get_gutter_holders_cost позволяет получить / рассчитать стоимость 
  держателей желоба на водосточном карнизе, на основании:
  - double get_gutter_holders() (метод расчета количества держателей 
  желоба в штуках)
  - double PriceDrainage().gutter_holder_price (параметр класса PriceDrainage: 
  стоимость держателя желоба за 1шт в руб)
  возвращает double gutter_holders_cost (общая стоимость всех держателей 
  желоба на карнизе в руб)
  */
    double gutter_holders_cost =
        get_gutter_holders() * PriceDrainage().gutter_holder_price;
    return gutter_holders_cost;
  }

  get_gutter_angles() {
    /*
  Метод  get_gutter_angles позволяет получить / рассчитать количество 
  углов желоба, на основании следующих параметров:
  - int gutter_angles (переменной начального количества углов желоба в штуках)
  возвращает int gutter_angles (количество углов желоба в штуках)
  */
    int gutter_angles = gutter_angle;
    return gutter_angles;
  }

  get_gutter_angles_cost() {
    /*
  Метод  get_gutter_angles_cost позволяет получить / рассчитать стоимость 
  углов желоба на водосточном карнизе, на основании:
  - double get_gutter_angles() (метод расчета количества углов желоба в штуках)
  - double PriceDrainage().gutter_angle_price (параметр класса PriceDrainage: 
  стоимость угла желоба за 1шт в руб)
  возвращает double gutter_angles_cost (общая стоимость всех углов желоба в руб)
  */
    double gutter_angles_cost =
        get_gutter_angles() * PriceDrainage().gutter_angle_price;
    return gutter_angles_cost;
  }

  get_funnels() {
    /*
  Метод  get_funnels позволяет получить / рассчитать количество 
  воронок, на основании следующих параметров:
  - int num_downpipe (количества водосточных стояков в штуках)
  возвращает int funnels (количество воронок в штуках)
  */
    int funnels = num_downpipe;
    return funnels;
  }

  get_funnels_cost() {
    /*
  Метод  get_funnels_cost позволяет получить / рассчитать стоимость 
  воронок на водосточном карнизе, на основании:
  - double get_funnels() (метод расчета количества воронок в штуках)
  - double PriceDrainage().funnel_price (параметр класса PriceDrainage: 
  стоимость воронок за 1шт в руб)
  возвращает double funnels_cost (общая стоимость всех воронок на карнизе в руб)
  */
    double funnels_cost = get_funnels() * PriceDrainage().funnel_price;
    return funnels_cost;
  }

  get_elbows() {
    /*
  Метод  get_elbows позволяет получить / рассчитать количество 
  колен, на основании следующих параметров:
  - int num_downpipe (количества водосточных стояков в штуках)
  возвращает int elbows (количество колен в штуках)
  */
    int elbows = num_downpipe * 2;
    return elbows;
  }

  get_elbows_cost() {
    /*
  Метод  get_elbows_cost позволяет получить / рассчитать стоимость 
  колен на водосточном карнизе, на основании:
  - double get_elbows() (метод расчета количества колен в штуках)
  - double PriceDrainage().elbow_price (параметр класса PriceDrainage: 
  стоимость колен за 1шт в руб)
  возвращает double elbows_cost (общая стоимость всех колен на карнизе в руб)
  */
    double elbows_cost = get_elbows() * PriceDrainage().elbow_price;
    return elbows_cost;
  }

  get_bigs_pipes() {
    /*
  Метод  get_bigs_pipes позволяет получить / рассчитать количество 
  больших труб (L=3000), на основании определенных условий:
  - int (num_downpipe <= 0) (когда отсутствуют водосточные стояки)
  - int (num_downpipe == 1) (когда имеется один водосточный стояк)
  - int (num_downpipe == 2) (когда имеется два водосточных стояка)
  - int (num_downpipe == 3) (когда имеется три водосточных стояка)
  - int (num_downpipe == 4) (когда имеется четыре водосточных стояка)
  - int (num_downpipe >= 5) (когда имеется пять либо больше водосточных стояков),
  расчёт проводится с использованием переменной double one_downpipe 
  (один водосточный стояк карниза) и на основании следующих параметров:
  - int num_downpipe (количества водосточных стояков в штуках)
  - double downpipe_height (высоты от карниза до земли в метрах)
  - int length_big_pipe (константы длины 1шт большой трубы (L=3000) в метрах)
  возвращает int big_pipes (количество больших труб (L=3000) в штуках) 
  */
    double one_downpipe = downpipe_height / length_big_pipe;
    if (num_downpipe <= 0) {
      int big_pipes = 0;
      return big_pipes;
    }
    if (num_downpipe == 1) {
      int big_pipes = (one_downpipe).ceil();
      return big_pipes;
    }
    if (num_downpipe == 2) {
      int big_pipes = ((one_downpipe).ceil() +
              (one_downpipe - (one_downpipe * 0.001)).round())
          .ceil();
      return big_pipes;
    }
    if (num_downpipe == 3) {
      int big_pipes = ((one_downpipe).ceil() +
              (one_downpipe - (one_downpipe * 0.001)).round() +
              (one_downpipe).ceil())
          .ceil();
      return big_pipes;
    }
    if (num_downpipe == 4) {
      int big_pipes = ((one_downpipe).ceil() +
              (one_downpipe - (one_downpipe * 0.001)).round() +
              (one_downpipe).ceil() +
              (one_downpipe - (one_downpipe * 0.001)).round())
          .ceil();
      return big_pipes;
    }
    if (num_downpipe >= 5) {
      int big_pipes = (one_downpipe).ceil();
      return big_pipes;
    }
  }

  get_bigs_pipes_cost() {
    /*
  Метод  get_bigs_pipes_cost позволяет получить / рассчитать стоимость 
  больших труб на водосточном карнизе, на основании:
  - double get_bigs_pipes() (метод расчета количества больших труб в штуках)
  - double PriceDrainage().big_pipe_price (параметр класса PriceDrainage: 
  стоимость больших труб за 1шт в руб)
  возвращает double bigs_pipes_cost (общая стоимость всех больших труб 
  на карнизе в руб)
  */
    double bigs_pipes_cost = get_bigs_pipes() * PriceDrainage().big_pipe_price;
    return bigs_pipes_cost;
  }

  get_pipe_connectors() {
    /*
  Метод  get_pipe_connectors позволяет получить / рассчитать количество 
  соединителей труб, на основании следующих параметров:
  - double downpipe_height (высоты от карниза до земли в метрах)
  - int length_big_pipe (константы длины 1шт большой трубы (L=3000) в метрах)
  - int num_downpipe (количества водосточных стояков в штуках)
  возвращает int pipe_connectors (количество соединителей труб в штуках)
  */
    int pipe_connectors =
        ((downpipe_height / length_big_pipe).ceil() * num_downpipe) -
            num_downpipe;
    return pipe_connectors;
  }

  get_pipe_connectors_cost() {
    /*
  Метод  get_pipe_connectors_cost позволяет получить / рассчитать стоимость 
  соединителей труб на водосточном карнизе, на основании:
  - double get_pipe_connectors() (метод расчета количества 
  соединителей труб в штуках)
  - double PriceDrainage().pipe_connector_price (параметр класса PriceDrainage: 
  стоимость соединителей труб за 1шт в руб)
  возвращает double pipe_connectors_cost (общая стоимость всех 
  соединителей труб на карнизе в руб)
  */
    double pipe_connectors_cost =
        get_pipe_connectors() * PriceDrainage().pipe_connector_price;
    return pipe_connectors_cost;
  }

  get_small_pipes() {
    /*
  Метод  get_small_pipes позволяет получить / рассчитать количество 
  малых труб (L=1000), на основании следующих параметров:
  - int num_downpipe (количества водосточных стояков в штуках)
  возвращает int small_pipes (количество малых труб (L=1000) в штуках) 
  */
    int small_pipes = num_downpipe;
    return small_pipes;
  }

  get_small_pipes_cost() {
    /*
  Метод  get_small_pipes_cost позволяет получить / рассчитать стоимость 
  малых труб на водосточном карнизе, на основании:
  - double get_small_pipes() (метод расчета количества малых труб в штуках)
  - double PriceDrainage().small_pipe_price (параметр класса PriceDrainage: 
  стоимость малых труб за 1шт в руб)
  возвращает double small_pipes_cost (общая стоимость всех малых труб 
  на карнизе в руб)
  */
    double small_pipes_cost =
        get_small_pipes() * PriceDrainage().small_pipe_price;
    return small_pipes_cost;
  }

  get_tips() {
    /*
  Метод  get_tips позволяет получить / рассчитать количество 
  отмётов трубы, на основании параметра:
  - int num_downpipe (количества водосточных стояков в штуках)
  возвращает int tips (количество отмётов трубы в штуках)
  */
    int tips = num_downpipe;
    return tips;
  }

  get_tips_cost() {
    /*
  Метод  get_tips_cost позволяет получить / рассчитать стоимость 
  отмётов на водосточном карнизе, на основании:
  - double get_tips() (метод расчета количества отмётов в штуках)
  - double PriceDrainage().tip_price (параметр класса PriceDrainage: 
  стоимость отмётов за 1шт в руб)
  возвращает double tips_cost (общая стоимость всех отмётов на карнизе в руб)
  */
    double tips_cost = get_tips() * PriceDrainage().tip_price;
    return tips_cost;
  }

  get_pipe_holders() {
    /*
  Метод  get_pipe_holders позволяет получить / рассчитать количество 
  держателей трубы, на основании следующих параметров:
  - double downpipe_height (высоты от карниза до земли в метрах)
  - int num_downpipe (количества водосточных стояков в штуках)
  - double pipe_holder_pitch (переменной шага установки держателей трубы в метрах)
  возвращает int pipe_holders (количество держателей трубы в штуках)
  */
    final pipe_holders =
        (((downpipe_height * num_downpipe) / pipe_holder_pitch) + num_downpipe)
            .ceil();
    return pipe_holders;
  }

  get_pipe_holders_cost() {
    /*
  Метод  get_pipe_holders_cost позволяет получить / рассчитать стоимость 
  держателей трубы на водосточном карнизе, на основании:
  - double get_pipe_holders() (метод расчета количества держателей трубы в штуках)
  - double PriceDrainage().pipe_holder_price (параметр класса PriceDrainage: 
  стоимость держателей трубы за 1шт в руб)
  возвращает double pipe_holders_cost (общая стоимость всех держателей трубы 
  на карнизе в руб)
  */
    double pipe_holders_cost =
        get_pipe_holders() * PriceDrainage().pipe_holder_price;
    return pipe_holders_cost;
  }

  get_pins() {
    /*
  Метод  get_pins позволяет получить / рассчитать количество 
  штырей для держателя трубы, на основании следующих параметров:
  - double downpipe_height (высоты от карниза до земли в метрах)
  - int num_downpipe (количества водосточных стояков в штуках)
  - double pipe_holder_pitch (переменной шага установки держателей трубы в метрах)
  возвращает int pins (количество штыре для держателя трубы в штуках)
  */
    int pins =
        (((downpipe_height * num_downpipe) / pipe_holder_pitch) + num_downpipe)
            .ceil();
    return pins;
  }

  get_pins_cost() {
    /*
  Метод  get_pins_cost позволяет получить / рассчитать стоимость 
  штырей для держателей трубы на водосточном карнизе, на основании:
  - double get_pins() (метод расчета количества штырей для 
  держателей трубы в штуках)
  - double PriceDrainage().pin_price (параметр класса PriceDrainage: 
  стоимость штырей для держателей трубы за 1шт в руб)
  возвращает double pins_cost (общая стоимость всех штырей для держателей трубы 
  на карнизе в руб)
  */
    double pins_cost = get_pins() * PriceDrainage().pin_price;
    return pins_cost;
  }

  get_result_drainage_cornice() {
    int gutters = get_gutters().ceil();
    double gutters_cost = get_gutters_cost();
    int gutter_connectors = get_gutter_connectors();
    double gutter_connectors_cost = get_gutter_connectors_cost();
    int plugs = get_plugs();
    double plugs_cost = get_plugs_cost();
    int gutter_holders = get_gutter_holders();
    double gutter_holder_cost = get_gutter_holders_cost();
    int gutter_angles = get_gutter_angles();
    double gutter_angles_cost = get_gutter_angles_cost();
    int funnels = get_funnels();
    double funnels_cost = get_funnels_cost();
    int elbows = get_elbows();
    double elbows_cost = get_elbows_cost();
    int bigs_pipes = get_bigs_pipes();
    double bigs_pipes_cost = get_bigs_pipes_cost();
    int pipe_connect1 = get_pipe_connectors();
    double pipe_connect_cost = get_pipe_connectors_cost();
    int small_pipes = get_small_pipes();
    double small_pipes_cost = get_small_pipes_cost();
    int tips = get_tips();
    double tips_cost = get_tips_cost();
    int pipe_holders = get_pipe_holders();
    double pipe_holders_cost = get_pipe_holders_cost();
    int pins = get_pins();
    double pins_cost = get_pins_cost();

    if (cornice_length > 0.0) {
      print(
          '''${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:
Желобов (3м):                             ${gutters} шт = ${gutters_cost.toStringAsFixed(2)} руб
Соединитель желоба:                       $gutter_connectors шт = ${gutter_connectors_cost.toStringAsFixed(2)} руб''');
      if (plugs == 0) {
      } else {
        print(
            '''Заглушка желоба:                          $plugs шт = ${plugs_cost.toStringAsFixed(2)} руб''');
        listPlugs.add(plugs);
        listPlugsCost.add(plugs_cost);
      }
      print(
          '''Держатель желоба:                         $gutter_holders шт = ${gutter_holder_cost.toStringAsFixed(2)} руб''');
      listGutters.add(gutters);
      listGuttersCost.add(gutters_cost);
      listGutterConnect.add(gutter_connectors);
      listGutterConnectCost.add(gutter_connectors_cost);
      listGutterHolders.add(gutter_holders);
      listGutterHoldersCost.add(gutter_holder_cost);
      listGutterAngles.add(gutter_angles);
      listGutterAnglesCost.add(gutter_angles_cost);
    } else {}

    if (num_downpipe > 0) {
      print('''
Воронка:                                  $funnels шт = ${funnels_cost.toStringAsFixed(2)} руб
Колено:                                   $elbows шт = ${elbows_cost.toStringAsFixed(2)} руб
Труб (3м):                                ${bigs_pipes} шт = ${bigs_pipes_cost.toStringAsFixed(2)} руб''');
      if (pipe_connect1 == 0) {
      } else {
        print(
            '''Соединитель трубы:                        $pipe_connect1 шт = ${pipe_connect_cost.toStringAsFixed(2)} руб''');
        listPipeConnect.add(pipe_connect1);
        listPipeConnectCost.add(pipe_connect_cost);
      }
      print('''
Труб (1м):                                ${small_pipes} шт = ${small_pipes_cost.toStringAsFixed(2)} руб
Отмёт:                                    ${tips} шт = ${tips_cost.toStringAsFixed(2)} руб
Держатель трубы:                          ${pipe_holders} шт = ${pipe_holders_cost.toStringAsFixed(2)} руб
Штырь:                                    ${pins} шт = ${pins_cost.toStringAsFixed(2)} руб
''');
      listFunnels.add(funnels);
      listFunnelsCost.add(funnels_cost);
      listElbows.add(elbows);
      listElbowsCost.add(elbows_cost);
      listBigsPipes.add(bigs_pipes);
      listBigsPipesCost.add(bigs_pipes_cost);
      listSmallPipes.add(small_pipes);
      listSmallPipesCost.add(small_pipes_cost);
      listTips.add(tips);
      listTipsCost.add(tips_cost);
      listPipeHolders.add(pipe_holders);
      listPipeHoldersCost.add(pipe_holders_cost);
      listPins.add(pins);
      listPinsCost.add(pins_cost);
    } else {
      print('');
    }
  }

  static get_total_result_drainages_cornices() {
    if (listGutters.length > 0) {
      print(
          'КОЛИЧЕСТВО КАРНИЗОВ:                      ${listGutters.length} шт');
      print(
          '\nСУММАРНОЕ КОЛИЧЕСТВО ЭЛЕМЕНТОВ ВОДОСТОЧНОЙ СИСТЕМЫ СО ВСЕХ КАРНИЗОВ:');
      if (sum_gutters() > 0) {
        print(
            'Желоб водосточный (L=3000мм):             ${sum_gutters()} шт = ${sum_gutters_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_gutters());
        listCosts.add(sum_gutters_cost());
      } else {}
      if (sum_gutter_connect() > 0) {
        print(
            'Соединитель желоба водосточного:          ${sum_gutter_connect()} шт = ${sum_gutters_connect_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_gutter_connect());
        listCosts.add(sum_gutters_connect_cost());
      } else {}
      if (sum_plugs() > 0) {
        print(
            'Заглушка желоба водосточного:             ${sum_plugs()} шт = ${sum_plugs_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_plugs());
        listCosts.add(sum_plugs_cost());
      } else {}
      if (sum_gutter_holders() > 0) {
        print(
            'Держатель желоба водосточного:            ${sum_gutter_holders()} шт = ${sum_gutter_holders_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_gutter_holders());
        listCosts.add(sum_gutter_holders_cost());
      } else {}
      if (sum_gutter_angles() > 0) {
        print(
            'Угол желоба водосточного:                 ${sum_gutter_angles()} шт = ${sum_gutter_angles_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_gutter_angles());
        listCosts.add(sum_gutter_angles_cost());
      } else {}
      if (sum_funnels() > 0) {
        print(
            'Воронка трубы водосточной:                ${sum_funnels()} шт = ${sum_funnels_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_funnels());
        listCosts.add(sum_funnels_cost());
      } else {}
      if (sum_elbows() > 0) {
        print(
            'Колено трубы водосточной:                 ${sum_elbows()} шт = ${sum_elbows_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_elbows());
        listCosts.add(sum_elbows_cost());
      } else {}
      if (sum_bigs_pipes() > 0) {
        print(
            'Труба водосточная (L=3000мм):             ${sum_bigs_pipes()} шт = ${sum_bigs_pipes_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_bigs_pipes());
        listCosts.add(sum_bigs_pipes_cost());
      } else {}
      if (sum_pipe_connect() > 0) {
        print(
            'Соединитель трубы водосточной:            ${sum_pipe_connect()} шт = ${sum_pipe_connect_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_pipe_connect());
        listCosts.add(sum_pipe_connect_cost());
      } else {}
      if (sum_small_pipes() > 0) {
        print(
            'Труба водосточная (L=1000мм):             ${sum_small_pipes()} шт = ${sum_small_pipes_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_small_pipes());
        listCosts.add(sum_small_pipes_cost());
      } else {}
      if (sum_tips() > 0) {
        print(
            'Отмёт трубы водосточной:                  ${sum_tips()} шт = ${sum_tips_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_tips());
        listCosts.add(sum_tips_cost());
      } else {}
      if (sum_pipe_holders() > 0) {
        print(
            'Держатель трубы водосточной:              ${sum_pipe_holders()} шт = ${sum_pipe_holders_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_pipe_holders());
        listCosts.add(sum_pipe_holders_cost());
      }
      if (sum_pins() > 0) {
        print(
            'Штырь держателя трубы:                    ${sum_pins()} шт = ${sum_pins_cost().toStringAsFixed(2)} руб');
        listElements.add(sum_pins());
        listCosts.add(sum_pins_cost());
      } else {}
      print(
          '\nИТОГО:                                    ${sum_elements()} шт = ${sum_costs().toStringAsFixed(2)} руб\n');
    } else {}
  }
}
