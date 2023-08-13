import 'package:storage/model/my_models.dart';

abstract class LocalStorageService {
  Future<void> verileriKaydet(UserInformation userInformation);
  Future<UserInformation> verileriOku();
}
