<<<<<<< HEAD
import 'dart:convert';

=======
<<<<<<< HEAD
import 'dart:convert';

import 'package:flutter/material.dart';

class ProdukModel {
  final String name;
  final String price;
  final IconData icon;

  ProdukModel({required this.name, required this.price, required this.icon});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{"name": name, "price": price, "icon": icon};
  }

  factory ProdukModel.fromMap(Map<String, dynamic> map) {
    return ProdukModel(
      name: map["name"] as String,
      price: map["price"] as String,
      icon: map["icon"] as IconData,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukModel.formJson(String source) =>
      ProdukModel.fromMap(json.decode(source) as Map<String, dynamic>);
=======
>>>>>>> e96913a98d87e7b54443140e85da3993f90ae39f
import 'package:flutter/material.dart';

class ProdukModel {
  final String name;
  final String price;
  final IconData icon;

  ProdukModel({required this.name, required this.price, required this.icon});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{"name": name, "price": price, "icon": icon};
  }
<<<<<<< HEAD

  factory ProdukModel.fromMap(Map<String, dynamic> map) {
    return ProdukModel(
      name: map["name"] as String,
      price: map["price"] as String,
      icon: map["icon"] as IconData,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukModel.formJson(String source) =>
      ProdukModel.fromMap(json.decode(source) as Map<String, dynamic>);
=======
>>>>>>> d24d143e3adfd62f112d87136312235388d7c80f
>>>>>>> e96913a98d87e7b54443140e85da3993f90ae39f
}
