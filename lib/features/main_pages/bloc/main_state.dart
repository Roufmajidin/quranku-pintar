part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial({
    @Default(QuranModels) quranData,
    @Default(<QuranData>[] ) List<QuranData> quran,
    @Default(<Surat>[]) List<Surat> surat,   
    @Default(FetchStatus.initial) FetchStatus fetchDataProses,
    @Default(0) int index,
    @Default(false) bool isPassed,
    @Default('') String isLoading,

  }) = _Initial;
}
