import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_test.freezed.dart';
part 'my_test.g.dart';

@freezed
@firestoreOdm
abstract class MyTest with _$MyTest {
  const factory MyTest({
    @DocumentIdField() required String id,
    required String name,
    required String description,
    required int priceCents,
    required int quantity,
    required DateTime createdAt,
  }) = _MyTest;

  factory MyTest.fromJson(Map<String, dynamic> json) => _$MyTestFromJson(json);
}