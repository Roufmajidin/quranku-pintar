// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TajweedToken _$TajweedTokenFromJson(Map<String, dynamic> json) => TajweedToken(
      $enumDecode(_$TajweedRuleEnumMap, json['rule']),
      $enumDecodeNullable(_$TajweedSubruleEnumMap, json['subrule']),
      (json['subruleSubindex'] as num?)?.toInt(),
      json['text'] as String,
      (json['startIx'] as num).toInt(),
      (json['endIx'] as num).toInt(),
      json['matchGroup'] as String?,
    );

Map<String, dynamic> _$TajweedTokenToJson(TajweedToken instance) =>
    <String, dynamic>{
      'rule': _$TajweedRuleEnumMap[instance.rule]!,
      'subrule': _$TajweedSubruleEnumMap[instance.subrule],
      'subruleSubindex': instance.subruleSubindex,
      'matchGroup': instance.matchGroup,
      'text': instance.text,
      'startIx': instance.startIx,
      'endIx': instance.endIx,
    };

const _$TajweedRuleEnumMap = {
  TajweedRule.LAFZATULLAH: 'LAFZATULLAH',
  TajweedRule.izhar: 'izhar',
  TajweedRule.ikhfaa: 'ikhfaa',
  TajweedRule.idghamWithGhunna: 'idghamWithGhunna',
  TajweedRule.iqlab: 'iqlab',
  TajweedRule.qalqala: 'qalqala',
  TajweedRule.idghamWithoutGhunna: 'idghamWithoutGhunna',
  TajweedRule.ghunna: 'ghunna',
  TajweedRule.prolonging: 'prolonging',
  TajweedRule.alefTafreeq: 'alefTafreeq',
  TajweedRule.hamzatulWasli: 'hamzatulWasli',
  TajweedRule.none: 'none',
};

const _$TajweedSubruleEnumMap = {
  TajweedSubrule.noonSakinAndTanweens: 'noonSakinAndTanweens',
  TajweedSubrule.meemSakin: 'meemSakin',
  TajweedSubrule.misleyn: 'misleyn',
  TajweedSubrule.mutajaniseyn: 'mutajaniseyn',
  TajweedSubrule.mutagaribeyn: 'mutagaribeyn',
  TajweedSubrule.shamsiyya: 'shamsiyya',
  TajweedSubrule.gamariyya: 'gamariyya',
  TajweedSubrule.byTwo: 'byTwo',
  TajweedSubrule.muttasil: 'muttasil',
  TajweedSubrule.munfasil: 'munfasil',
  TajweedSubrule.lazim: 'lazim',
  TajweedSubrule.lin: 'lin',
  TajweedSubrule.ivad: 'ivad',
};
