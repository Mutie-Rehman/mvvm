import 'package:mvvm/data/network/base_api_service.dart';
import 'package:mvvm/data/network/network_api_service.dart';
import 'package:mvvm/resources/app_urls.dart';

class AuthRepository {
  final BaseApiService _apiService = NetworkServiceApi();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiService.getPostApiResponse(AppUrls.loginUrl, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response =
          await _apiService.getPostApiResponse(AppUrls.registerUrl, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
