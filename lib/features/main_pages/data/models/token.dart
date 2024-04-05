import 'package:json_annotation/json_annotation.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/tajwid_helper/tajweed_rule.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/tajwid_helper/tajweed_subrule.dart';

part 'token.g.dart';

@JsonSerializable()
class TajweedToken implements Comparable<TajweedToken> {
  final TajweedRule rule;
  final TajweedSubrule? subrule;
  final int? subruleSubindex;
  final String? matchGroup;
  final String text;
  final int startIx;
  final int endIx;

  TajweedToken(
    this.rule,
    this.subrule,
    this.subruleSubindex,
    this.text,
    this.startIx,
    this.endIx,
    this.matchGroup,
  );

  bool isRule() {
    return rule != TajweedRule.none;
  }

  bool isNotRule() {
    return rule == TajweedRule.none;
  }

  bool get canBreakAfter => text.endsWith(' ');

  @override
  int compareTo(TajweedToken other) {
    if (startIx < other.startIx) {
      return -1;
    } else if (startIx > other.startIx) {
      return 1;
    }

    return 0;
  }

  factory TajweedToken.fromJson(Map<String, dynamic> json) => _$TajweedTokenFromJson(json);
  
  Map<String, dynamic> toJson() => _$TajweedTokenToJson(this);

  @override
  String toString() {
    return 'TajweedToken{ from: $startIx to: $endIx group: $rule subrule: $subrule subindex: $subruleSubindex text: \'$text\' matchGroup: $matchGroup }';
  }
}