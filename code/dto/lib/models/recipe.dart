import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
@firestoreOdm
abstract class Recipe with _$Recipe {
  const factory Recipe({
    @DocumentIdField() required String id,
    required String title,
    required String description,
    required String timer,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
