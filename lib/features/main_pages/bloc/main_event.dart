part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = _Started;
  const factory MainEvent.getSurat(int surat) = GetDetailSurat;
  const factory MainEvent.getAll() = GetAllSurah;
  const factory MainEvent.getMateri() = GetMateri;
  const factory MainEvent.checkPassed(String ayat) = CheckPassed;
  const factory MainEvent.checkpassMateri({required String ayat, required String acuan, required int id}) = CheckPassMateri;

  const factory MainEvent.deviceInfo(String deviceInfo) = DevInfo;
  const factory MainEvent.postDev(String deviceInfo) = PostDevice;
  const factory MainEvent.loadingActive(String loading) = LoadingActive;
  const factory MainEvent.getStatus() = GetStatus;
  const factory MainEvent.getMateriPengguna(String device) = GetMateriPengguna;
  const factory MainEvent.postLearn({required int id, required int nilai}) = PostLearn;
  const factory MainEvent.cariSurat(String query) = CariSurat;

  

}