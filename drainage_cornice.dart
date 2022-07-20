class DrainageCornice {
  final double cornice_length;
  final double downpipe_height;
  final int num_downpipe;
  final int length_gutter = 3;
  final int length_big_pipe = 3;
  final int length_small_pipe = 1;
  double gutter_holder_pitch = 0.5;
  double pipe_holder_pitch = 1.25;
  int gutter_angle = 0;

  DrainageCornice(
    this.cornice_length,
    this.downpipe_height,
    this.num_downpipe,
  );

  get_gutters() {
    /*
  Метод  get_gutters позволяет получить / расчитать количество желобов 
  на водосточном карнизе, на основании следующих параметров:
  - double cornice_length (длины карниза в метрах)
  - int length_gutter (константы длины 1шт желоба в метрах)
  возвращает double gutters (количество желобов в штуках)
  */
    double gutters = cornice_length / length_gutter;
    return gutters;
  }

  get_gutter_connectors() {
    /*
  Метод  get_gutter_connectors позволяет получить / расчитать количество 
  соединителей желоба, на основании следующих параметров:
  - double cornice_length (длины карниза в метрах)
  - int length_gutter (константы длины 1шт желоба в метрах)
  возвращает int gutter_connectors (количество соединителей желоба в штуках)
  */
    int gutter_connectors = (cornice_length / length_gutter).ceil() - 1;
    return gutter_connectors;
  }

  get_plugs() {
    /*
  Метод  get_plugs позволяет получить / расчитать количество 
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

  get_gutter_holders() {
    /*
  Метод  get_gutter_holders позволяет получить / расчитать количество 
  держателей желоба, на основании следующих параметров:
  - double cornice_length (длины карниза в метрах)
  - double gutter_holder_pitch (переменной шага установки желоба в метрах)
  возвращает int gutter_holders (количество держателей желоба в штуках)
  */
    int gutter_holders = (cornice_length / gutter_holder_pitch).ceil() + 1;
    return gutter_holders;
  }

  get_gutter_angles() {
    /*
  Метод  get_gutter_angles позволяет получить / расчитать количество 
  углов желоба, на основании следующих параметров:
  - int gutter_angles (переменной начального количества углов желоба в штуках)
  возвращает int gutter_angles (количество углов желоба в штуках)
  */
    int gutter_angles = gutter_angle;
    return gutter_angles;
  }

  get_funnels() {
    /*
  Метод  get_funnels позволяет получить / расчитать количество 
  воронок, на основании следующих параметров:
  - int num_downpipe (количества водосточных стояков в штуках)
  возвращает int funnels (количество воронок в штуках)
  */
    int funnels = num_downpipe;
    return funnels;
  }

  get_elbows() {
    /*
  Метод  get_elbows позволяет получить / расчитать количество 
  колен, на основании следующих параметров:
  - int num_downpipe (количества водосточных стояков в штуках)
  возвращает int elbows (количество колен в штуках)
  */
    int elbows = num_downpipe * 2;
    return elbows;
  }

  get_bigs_pipes() {
    /*
  Метод  get_bigs_pipes позволяет получить / расчитать количество 
  больших труб (L=3000), на основании определенных условий:
  - int (num_downpipe <= 0) (когда отсутствуют водосточные стояки)
  - int (num_downpipe == 1) (когда имеется один водосточный стояк)
  - int (num_downpipe == 2) (когда имеется два водосточных стояка)
  - int (num_downpipe == 3) (когда имеется три водосточных стояка)
  - int (num_downpipe == 4) (когда имеется четыре водосточных стояка)
  - int (num_downpipe >= 5) (когда имеется пять либо больше водосточных стояков),
  расчёт проводится с использованием переменной double one_downpipe 
  (один водосточный стояк карниза) и следующих параметров:
  - int num_downpipe (количество водосточных стояков в метрах)
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

  get_pipe_connectors() {
    /*
  Метод  get_pipe_connectors позволяет получить / расчитать количество 
  соединителей труб, на основании следующих параметров:
  - double downpipe_height (высоты от карниза до земли в метрах)
  - int length_big_pipe (константы длины 1шт большой трубы (L=3000) в метрах)
  - int num_downpipe (количество водосточных стояков в метрах)
  возвращает int pipe_connectors (количество соединителей труб в штуках)
  */
    int pipe_connectors =
        ((downpipe_height / length_big_pipe).ceil() * num_downpipe) -
            num_downpipe;
    return pipe_connectors;
  }

  get_small_pipes() {
    /*
  Метод  get_small_pipes позволяет получить / расчитать количество 
  малых труб (L=1000), на основании следующих параметров:
  - int num_downpipe (количество водосточных стояков в метрах)
  возвращает int small_pipes (количество малых труб (L=1000) в штуках) 
  */
    int small_pipes = num_downpipe;
    return small_pipes;
  }

  get_tips() {
    int tips = num_downpipe;
    return tips;
  }

  get_pipe_holders() {
    final pipe_holders =
        (((downpipe_height * num_downpipe) / pipe_holder_pitch) + num_downpipe)
            .ceil();
    return pipe_holders;
  }

  get_pins() {
    int pins =
        (((downpipe_height * num_downpipe) / pipe_holder_pitch) + num_downpipe)
            .ceil();
    return pins;
  }
}
