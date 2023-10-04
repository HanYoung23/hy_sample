// feature1_repository.dart

import 'package:flutter/material.dart';
import 'package:hysample/data/api/network_api_services.dart';
import 'package:hysample/data/models/auth_model.dart';

//

class AuthRepository {
  final NetworkApiServices _apiService = NetworkApiServices();

  Future<AuthModel> login() async {
    final response =
        await _apiService.getApi("https://api.publicapis.org/entries");
    debugPrint("✅ response : $response");
    return AuthModel.fromJson(response);
  }
}
