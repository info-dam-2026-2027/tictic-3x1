// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      priceCents: (json['priceCents'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

const _$ProductFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'description': 'description',
  'priceCents': 'priceCents',
  'quantity': 'quantity',
  'createdAt': 'createdAt',
};

// ignore: unused_element
abstract class _$ProductPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? priceCents(int instance) => instance;
  // ignore: unused_element
  static Object? quantity(int instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) => instance.toIso8601String();
}

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'priceCents': instance.priceCents,
      'quantity': instance.quantity,
      'createdAt': instance.createdAt.toIso8601String(),
    };

// **************************************************************************
// ModelBuilderGenerator
// **************************************************************************

Map<String, dynamic>? ProductToJson(Product? instance) => instance == null
    ? null
    : {
        'id': instance.id,
        'name': instance.name,
        'description': instance.description,
        'priceCents': instance.priceCents,
        'quantity': instance.quantity,
        'createdAt': instance.createdAt,
      };
Product ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as String),
      name: (json['name'] as String),
      description: (json['description'] as String),
      priceCents: (json['priceCents'] as int),
      quantity: (json['quantity'] as int),
      createdAt: dateTimeFromJson(json['createdAt']),
    );

class ProductPatchBuilder extends PatchBuilder<Product> {
  /// Creates a patch builder for `Product`.
  ProductPatchBuilder({super.field});

  /// Patch handle for `name` (document field `name`).
  late final FieldUpdate<String> name = FieldUpdate(
    field: field.append('name'),
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

  /// Patch handle for `priceCents` (document field `priceCents`).
  late final NumericFieldUpdate<int> priceCents = NumericFieldUpdate(
    field: field.append('priceCents'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `quantity` (document field `quantity`).
  late final NumericFieldUpdate<int> quantity = NumericFieldUpdate(
    field: field.append('quantity'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `createdAt` (document field `createdAt`).
  late final DateTimeFieldUpdate createdAt = DateTimeFieldUpdate(
    field: field.append('createdAt'),
    toJson: (value) {
      return value;
    },
  );

  /// Replaces the whole `Product` at [field].
  SetOperation set(Product value) => SetOperation(
        field,
        ProductToJson(value),
      );

  /// Deletes the field at [field].
  DeleteOperation delete() => DeleteOperation(field);
}

class ProductFilterBuilder extends FilterBuilderRoot {
  ProductFilterBuilder({super.field});

  /// Selector for `id`.
  late final FilterField<String, String> id = FilterField<String, String>(
    field: append('id'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `name`.
  late final FilterField<String, String> name = FilterField<String, String>(
    field: append('name'),
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

  /// Selector for `priceCents`.
  late final FilterField<int, int> priceCents = FilterField<int, int>(
    field: append('priceCents'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `quantity`.
  late final FilterField<int, int> quantity = FilterField<int, int>(
    field: append('quantity'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `createdAt`.
  late final FilterField<DateTime, DateTime> createdAt =
      FilterField<DateTime, DateTime>(
    field: append('createdAt'),
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

class ProductOrderByBuilder extends OrderByBuilderRoot {
  ProductOrderByBuilder({
    super.field,
    required OrderByContext context,
  }) : _context = context;

  final OrderByContext _context;

  /// Selector for `id`.
  late final OrderByField<String> id = OrderByField(
    field: append('id'),
    context: _context,
  );

  /// Selector for `name`.
  late final OrderByField<String> name = OrderByField(
    field: append('name'),
    context: _context,
  );

  /// Selector for `description`.
  late final OrderByField<String> description = OrderByField(
    field: append('description'),
    context: _context,
  );

  /// Selector for `priceCents`.
  late final OrderByField<int> priceCents = OrderByField(
    field: append('priceCents'),
    context: _context,
  );

  /// Selector for `quantity`.
  late final OrderByField<int> quantity = OrderByField(
    field: append('quantity'),
    context: _context,
  );

  /// Selector for `createdAt`.
  late final OrderByField<DateTime> createdAt = OrderByField(
    field: append('createdAt'),
    context: _context,
  );

  /// The document ID pseudo-field.
  late final OrderByField<String> documentId = OrderByField(
    field: const DocumentIdNode(),
    context: _context,
  );
}

class ProductAggregateBuilder extends AggregateBuilderRoot {
  ProductAggregateBuilder({
    super.field,
    required AggregateContext context,
  }) : _context = context;

  final AggregateContext _context;

  /// Selector for `priceCents`.
  late final AggregateFieldSelector<int> priceCents = AggregateFieldSelector(
    field: append('priceCents'),
    context: _context,
  );

  /// Selector for `quantity`.
  late final AggregateFieldSelector<int> quantity = AggregateFieldSelector(
    field: append('quantity'),
    context: _context,
  );

  @override
  int count() => _context.resolve(const CountOperation('count'));
}

class ProductPipelineSelector extends PipelineFieldNode {
  ProductPipelineSelector({
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

  /// Selector for `name`.
  late final PipelineField<String> name = PipelineField(
    components: [...components, 'name'],
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

  /// Selector for `priceCents`.
  late final PipelineField<int> priceCents = PipelineField(
    components: [...components, 'priceCents'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `quantity`.
  late final PipelineField<int> quantity = PipelineField(
    components: [...components, 'quantity'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `createdAt`.
  late final PipelineField<DateTime> createdAt = PipelineField(
    components: [...components, 'createdAt'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );
}

extension ProductPipelineExtension<S extends FirestoreSchema>
    on FirestoreCollection<S, Product, ProductPatchBuilder,
        ProductFilterBuilder, ProductOrderByBuilder, ProductAggregateBuilder> {
  TypedPipeline<Product, ProductPipelineSelector> pipeline() => TypedPipeline(
        ref.firestore.pipeline().collection(ref.path),
        ProductFromJson,
        'id',
        (context) => ProductPipelineSelector(context: context),
      );
}
