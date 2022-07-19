import 'package:dudiwhatsapp/services/auth-service.dart';
import 'package:get_it/get_it.dart';

class GetIService {

  void setup() {
    GetIt.I.registerSingleton<AuthService>(AuthService());
  }
}
