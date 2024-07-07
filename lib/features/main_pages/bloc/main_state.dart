part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial({
    @Default(QuranModels) quranData,
    @Default(<QuranData>[] ) List<QuranData> quran,
    @Default(<Surat>[]) List<Surat> surat,   
    @Default(<Materi>[]) List<Materi> materi,   
    @Default(FetchStatus.initial) FetchStatus fetchDataProses,
    @Default(0) int index,
    @Default(0) int ayatIndex,
    @Default('') String ayatAcuan,
    @Default(false) bool isPassed,
    @Default('') String isLoading,
    @Default([])  groupedMateri,
    @Default([]) List<String> koreksian,

    // @Default([])  koreksi,



  }) = _Initial;
}
