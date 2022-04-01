import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class controllerClass {

  Future updateData(String username, String password) async {
    final updateCardUrl = Uri.parse("https://fakestore.com/auth/login");

    final response = await http.put(updateCardUrl, body: {
      "userId": "$username",
      "date":DateTime.now().toString(),
      "products": [
        {
          "productId": "$password",
          "quantity": "1"
        }
      ].toString()
    });

    if(response.statusCode == 200) {
      return true;
    }else {
      return false;
    }

  }
}