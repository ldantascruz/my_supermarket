import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductModel {
  final String? id;
  final String name;
  final double value;
  final bool status;
  final int quantity;
  final String category;

  ProductModel({
    this.id,
    required this.name,
    required this.value,
    required this.status,
    required this.quantity,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'value': value,
      'status': status,
      'quantity': quantity,
      'category': category,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] as String,
      value: map['value'] as double,
      status: map['status'] as bool,
      quantity: map['quantity'] as int,
      category: map['category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);


  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.value == value &&
      other.status == status &&
      other.quantity == quantity &&
      other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      value.hashCode ^
      status.hashCode ^
      quantity.hashCode ^
      category.hashCode;
  }
}
