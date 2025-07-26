import 'dart:convert'; // For encoding and decoding JSON data
import 'package:flutter/material.dart'; // Flutter UI toolkit
import 'package:flutter_application_krushnesh/modal/login_modal.dart';
import 'package:get/get.dart'; // GetX package for state management and navigation
import 'package:http/http.dart' as http; // For making HTTP requests
import 'package:shared_preferences/shared_preferences.dart'; // For local storage
import '../routes/app_routes.dart';

class LoginController extends GetxController {
  var isLoading = false.obs; // Reactive variable to track loading state

  final emailCtrl = TextEditingController(); // Controller to manage email input
  final passwordCtrl = TextEditingController();
  
  get LoginResponse => null; // Controller to manage password input


  // Method to handle user login
  Future<void> loginUser() async {
    isLoading.value = true; // Show loading indicator

    try {
      final response = await http.post(
        Uri.parse("https://krushimahostav.yuvapsvs.com/api/auth/login"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "email": emailCtrl.text.trim(),
          "password": passwordCtrl.text.trim(),
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final loginData = LoginResponse.fromJson(data);

        // Save token using SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', loginData.token ?? "");

        Get.snackbar(
          "Success",
          "Login successful",
          backgroundColor: Colors.green,
        );

        Get.offNamed(AppRoutes.tabs); // Navigate to home screen
      } else {
        final error = jsonDecode(response.body);
        Get.snackbar(
          "Login Failed",
          error['message'] ?? 'Unknown error',
          backgroundColor: Colors.red,
        );
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
