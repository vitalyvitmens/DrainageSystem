class DrainageCornice {
  final double cornice_length;
  final double downpipe_height;
  final int num_downpipe;
  final int length_gutter = 3;
  final int length_big_pipe = 3;
  final int length_small_pipe = 1;
  double gutter_holder_pitch = 0.5;
  double pipe_holder_pitch = 1.25;
  int num_cornice = 1;
  int gutter_angle = 0;

  DrainageCornice(
    this.cornice_length,
    this.downpipe_height,
    this.num_downpipe,
  );

  get_gutters() {
    double gutters = ((cornice_length * num_cornice) / length_gutter);
    return gutters;
  }

  get_gutter_connectors() {
    int gutter_connectors =
        (((cornice_length * num_cornice) / length_gutter).ceil()) -
            (num_cornice);
    return gutter_connectors;
  }

  get_plugs() {
    if (gutter_angle == 0) {
      int plugs = num_cornice * 2;
      return plugs;
    } else if (gutter_angle == 1) {
      int plugs = num_cornice;
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
    int gutter_holders =
        (((cornice_length * num_cornice) / gutter_holder_pitch) + num_cornice)
            .ceil();
    return gutter_holders;
  }

  get_gutter_angles() {
    int gutter_angles = gutter_angle;
    return gutter_angles;
  }

  get_funnels() {
    int funnels = num_downpipe;
    return funnels;
  }

  get_elbows() {
    int elbows = num_downpipe * 2;
    return elbows;
  }

  get_bigs_pipes() {
    double big_pipes = ((downpipe_height * num_downpipe) / length_big_pipe);
    return big_pipes;
  }

  get_pipe_connectors() {
    int pipe_connectors =
        ((downpipe_height / length_big_pipe).ceil() * num_downpipe) -
            num_downpipe;
    return pipe_connectors;
  }

  get_small_pipes() {
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
