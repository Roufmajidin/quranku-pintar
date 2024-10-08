import 'package:quranku_pintar/features/main_pages/data/models/token.dart';

enum TajweedSubrule {
  noonSakinAndTanweens,
  meemSakin,
  misleyn,
  mutajaniseyn,
  mutagaribeyn,
  shamsiyya,
  gamariyya,

  //prolonging
  byTwo,
  muttasil(1),
  munfasil(2),
  lazim,
  lin,
  ivad;

  const TajweedSubrule([this.priority = 100]);

  final int priority;
}
class TajweedWord {
  List<TajweedToken> tokens = [];
}

