// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      timer: json['timer'] as String,
    );

const _$RecipeFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'description': 'description',
  'timer': 'timer',
};

// ignore: unused_element
abstract class _$RecipePerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? timer(String instance) => instance;
}

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'timer': instance.timer,
    };

// **************************************************************************
// ModelBuilderGenerator
// **************************************************************************

Map<String, dynamic>? RecipeToJson(Recipe? instance) => instance == null
    ? null
    : {
        'id': instance.id,
        'title': instance.title,
        'description': instance.description,
        'timer': instance.timer,
      };
Recipe RecipeFromJson(Map<String, dynamic> json) => Recipe(
      id: (json['id'] as String),
      title: (json['title'] as String),
      description: (json['description'] as String),
      timer: (json['timer'] as String),
    );

class RecipePatchBuilder extends PatchBuilder<Recipe> {
  /// Creates a patch builder for `Recipe`.
  RecipePatchBuilder({super.field});

  /// Patch handle for `title` (document field `title`).
  late final FieldUpdate<String> title = FieldUpdate(
    field: field.append('title'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `description` (document field `description`).
  late final FieldUpdate<String> description = FieldUpdate(
    field: field.append('description'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `timer` (document field `timer`).
  late final FieldUpdate<String> timer = FieldUpdate(
    field: field.append('timer'),
    toJson: (value) {
      return value;
    },
  );

  /// Replaces the whole `Recipe` at [field].
  SetOperation set(Recipe value) => SetOperation(
        field,
        RecipeToJson(value),
      );

  /// Deletes the field at [field].
  DeleteOperation delete() => DeleteOperation(field);
}

class RecipeFilterBuilder extends FilterBuilderRoot {
  RecipeFilterBuilder({super.field});

  /// Selector for `id`.
  late final FilterField<String, String> id = FilterField<String, String>(
    field: append('id'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `title`.
  late final FilterField<String, String> title = FilterField<String, String>(
    field: append('title'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `description`.
  late final FilterField<String, String> description =
      FilterField<String, String>(
    field: append('description'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `timer`.
  late final FilterField<String, String> timer = FilterField<String, String>(
    field: append('timer'),
    toJson: (value) {
      return value;
    },
  );

  /// The document ID pseudo-field.
  late final FilterField<String, String> documentId =
      FilterField<String, String>(
    field: const DocumentIdNode(),
    toJson: (value) {
      return value;
    },
  );
}

class RecipeOrderByBuilder extends OrderByBuilderRoot {
  RecipeOrderByBuilder({
    super.field,
    required OrderByContext context,
  }) : _context = context;

  final OrderByContext _context;

  /// Selector for `id`.
  late final OrderByField<String> id = OrderByField(
    field: append('id'),
    context: _context,
  );

  /// Selector for `title`.
  late final OrderByField<String> title = OrderByField(
    field: append('title'),
    context: _context,
  );

  /// Selector for `description`.
  late final OrderByField<String> description = OrderByField(
    field: append('description'),
    context: _context,
  );

  /// Selector for `timer`.
  late final OrderByField<String> timer = OrderByField(
    field: append('timer'),
    context: _context,
  );

  /// The document ID pseudo-field.
  late final OrderByField<String> documentId = OrderByField(
    field: const DocumentIdNode(),
    context: _context,
  );
}

class RecipeAggregateBuilder extends AggregateBuilderRoot {
  RecipeAggregateBuilder({
    super.field,
    required AggregateContext context,
  }) : _context = context;

  final AggregateContext _context;

  @override
  int count() => _context.resolve(const CountOperation('count'));
}

class RecipePipelineSelector extends PipelineFieldNode {
  RecipePipelineSelector({
    super.components,
    super.context,
  });

  /// Selector for `id`.
  late final PipelineField<String> id = PipelineField(
    components: [...components, 'id'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `title`.
  late final PipelineField<String> title = PipelineField(
    components: [...components, 'title'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `description`.
  late final PipelineField<String> description = PipelineField(
    components: [...components, 'description'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `timer`.
  late final PipelineField<String> timer = PipelineField(
    components: [...components, 'timer'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );
}

extension RecipePipelineExtension<S extends FirestoreSchema>
    on FirestoreCollection<S, Recipe, RecipePatchBuilder, RecipeFilterBuilder,
        RecipeOrderByBuilder, RecipeAggregateBuilder> {
  TypedPipeline<Recipe, RecipePipelineSelector> pipeline() => TypedPipeline(
        ref.firestore.pipeline().collection(ref.path),
        RecipeFromJson,
        'id',
        (context) => RecipePipelineSelector(context: context),
      );
}
