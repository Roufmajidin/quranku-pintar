part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = _Started;
  const factory MainEvent.getSurat(int surat) = GetDetailSurat;
  const factory MainEvent.getAll() = GetAllSurah;
  const factory MainEvent.getMateri() = GetMateri;
  const factory MainEvent.checkPassed(String ayat) = CheckPassed;
  const factory MainEvent.loadingActive(String loading) = LoadingActive;

}