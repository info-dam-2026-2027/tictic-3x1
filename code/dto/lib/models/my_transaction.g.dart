// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyTransaction _$MyTransactionFromJson(Map<String, dynamic> json) =>
    _MyTransaction(
      id: json['id'] as String,
      title: json['title'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
    );

const _$MyTransactionFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'amount': 'amount',
  'date': 'date',
  'description': 'description',
};

// ignore: unused_element
abstract class _$MyTransactionPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? amount(double instance) => instance;
  // ignore: unused_element
  static Object? date(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? description(String? instance) => instance;
}

Map<String, dynamic> _$MyTransactionToJson(_MyTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
      'description': instance.description,
    };

// **************************************************************************
// ModelBuilderGenerator
// **************************************************************************

Map<String, dynamic>? MyTransactionToJson(MyTransaction? instance) =>
    instance == null
        ? null
        : {
            'id': instance.id,
            'title': instance.title,
            'amount': instance.amount,
            'date': instance.date,
            'description': instance.description,
          };
MyTransaction MyTransactionFromJson(Map<String, dynamic> json) => MyTransaction(
      id: (json['id'] as String),
      title: (json['title'] as String),
      amount: (json['amount'] as num).toDouble(),
      date: dateTimeFromJson(json['date']),
      description:
          json['description'] == null ? null : (json['description'] as String?),
    );

class MyTransactionPatchBuilder extends PatchBuilder<MyTransaction> {
  /// Creates a patch builder for `MyTransaction`.
  MyTransactionPatchBuilder({super.field});

  /// Patch handle for `title` (document field `title`).
  late final FieldUpdate<String> title = FieldUpdate(
    field: field.append('title'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `amount` (document field `amount`).
  late final NumericFieldUpdate<double> amount = NumericFieldUpdate(
    field: field.append('amount'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `date` (document field `date`).
  late final DateTimeFieldUpdate date = DateTimeFieldUpdate(
    field: field.append('date'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `description` (document field `description`).
  late final FieldUpdate<String?> description = FieldUpdate(
    field: field.append('description'),
    toJson: (value) {
      return value;
    },
  );

  /// Replaces the whole `MyTransaction` at [field].
  SetOperation set(MyTransaction value) => SetOperation(
        field,
        MyTransactionToJson(value),
      );

  /// Deletes the field at [field].
  DeleteOperation delete() => DeleteOperation(field);
}

class MyTransactionFilterBuilder extends FilterBuilderRoot {
  MyTransactionFilterBuilder({super.field});

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

  /// Selector for `amount`.
  late final FilterField<double, double> amount = FilterField<double, double>(
    field: append('amount'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `date`.
  late final FilterField<DateTime, DateTime> date =
      FilterField<DateTime, DateTime>(
    field: append('date'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `description`.
  late final FilterField<String?, String?> description =
      FilterField<String?, String?>(
    field: append('description'),
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

class MyTransactionOrderByBuilder extends OrderByBuilderRoot {
  MyTransactionOrderByBuilder({
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

  /// Selector for `amount`.
  late final OrderByField<double> amount = OrderByField(
    field: append('amount'),
    context: _context,
  );

  /// Selector for `date`.
  late final OrderByField<DateTime> date = OrderByField(
    field: append('date'),
    context: _context,
  );

  /// Selector for `description`.
  late final OrderByField<String?> description = OrderByField(
    field: append('description'),
    context: _context,
  );

  /// The document ID pseudo-field.
  late final OrderByField<String> documentId = OrderByField(
    field: const DocumentIdNode(),
    context: _context,
  );
}

class MyTransactionAggregateBuilder extends AggregateBuilderRoot {
  MyTransactionAggregateBuilder({
    super.field,
    required AggregateContext context,
  }) : _context = context;

  final AggregateContext _context;

  /// Selector for `amount`.
  late final AggregateFieldSelector<double> amount = AggregateFieldSelector(
    field: append('amount'),
    context: _context,
  );

  @override
  int count() => _context.resolve(const CountOperation('count'));
}

class MyTransactionPipelineSelector extends PipelineFieldNode {
  MyTransactionPipelineSelector({
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

  /// Selector for `amount`.
  late final PipelineField<double> amount = PipelineField(
    components: [...components, 'amount'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `date`.
  late final PipelineField<DateTime> date = PipelineField(
    components: [...components, 'date'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `description`.
  late final PipelineField<String?> description = PipelineField(
    components: [...components, 'description'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );
}

extension MyTransactionPipelineExtension<S extends FirestoreSchema>
    on FirestoreCollection<
        S,
        MyTransaction,
        MyTransactionPatchBuilder,
        MyTransactionFilterBuilder,
        MyTransactionOrderByBuilder,
        MyTransactionAggregateBuilder> {
  TypedPipeline<MyTransaction, MyTransactionPipelineSelector> pipeline() =>
      TypedPipeline(
        ref.firestore.pipeline().collection(ref.path),
        MyTransactionFromJson,
        'id',
        (context) => MyTransactionPipelineSelector(context: context),
      );
}
