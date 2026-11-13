import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
@firestoreOdm
abstract class Product with _$Product {
  const factory Product({
    @DocumentIdField() required String id,
    required String name,
    required String description,
    required int priceCents,
    required int quantity,
    required DateTime createdAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}