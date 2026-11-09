// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Team _$TeamFromJson(Map<String, dynamic> json) => _Team(
      id: json['id'] as String,
      title: json['title'] as String,
      startDate:
          const FirestoreTimestampConverter().fromJson(json['startDate']),
      users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
      picturePath: json['picturePath'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

const _$TeamFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'startDate': 'startDate',
  'users': 'users',
  'picturePath': 'picturePath',
  'tags': 'tags',
};

// ignore: unused_element
abstract class _$TeamPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? startDate(DateTime instance) =>
      const FirestoreTimestampConverter().toJson(instance);
  // ignore: unused_element
  static Object? users(List<String> instance) => instance;
  // ignore: unused_element
  static Object? picturePath(String? instance) => instance;
  // ignore: unused_element
  static Object? tags(List<String>? instance) => instance;
}

Map<String, dynamic> _$TeamToJson(_Team instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'startDate':
          const FirestoreTimestampConverter().toJson(instance.startDate),
      'users': instance.users,
      'picturePath': instance.picturePath,
      'tags': instance.tags,
    };

// **************************************************************************
// ModelBuilderGenerator
// **************************************************************************

Map<String, dynamic>? TeamToJson(Team? instance) => instance == null
    ? null
    : {
        'id': instance.id,
        'title': instance.title,
        'startDate': instance.startDate == null
            ? null
            : const FirestoreTimestampConverter().toJson(instance.startDate),
        'users': instance.users,
        'picturePath': instance.picturePath,
        'tags': instance.tags,
      };
Team TeamFromJson(Map<String, dynamic> json) => Team(
      id: (json['id'] as String),
      title: (json['title'] as String),
      startDate:
          const FirestoreTimestampConverter().fromJson(json['startDate']),
      users: (json['users'] as List<dynamic>).cast<String>(),
      picturePath:
          json['picturePath'] == null ? null : (json['picturePath'] as String?),
      tags: json['tags'] == null
          ? null
          : (json['tags'] as List<dynamic>).cast<String>(),
    );

class TeamPatchBuilder extends PatchBuilder<Team> {
  /// Creates a patch builder for `Team`.
  TeamPatchBuilder({super.field});

  /// Patch handle for `title` (document field `title`).
  late final FieldUpdate<String> title = FieldUpdate(
    field: field.append('title'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `startDate` (document field `startDate`).
  late final DateTimeFieldUpdate startDate = DateTimeFieldUpdate(
    field: field.append('startDate'),
    toJson: (value) {
      return value == null
          ? null
          : const FirestoreTimestampConverter().toJson(value);
    },
  );

  /// Patch handle for `users` (document field `users`).
  late final ListFieldUpdate<String> users = ListFieldUpdate(
    field: field.append('users'),
    toJson: (value) {
      return value;
    },
    elementToJson: (value) {
      return value;
    },
  );

  /// Patch handle for `picturePath` (document field `picturePath`).
  late final FieldUpdate<String?> picturePath = FieldUpdate(
    field: field.append('picturePath'),
    toJson: (value) {
      return value;
    },
  );

  /// Patch handle for `tags` (document field `tags`).
  late final FieldUpdate<List<String>?> tags = FieldUpdate(
    field: field.append('tags'),
    toJson: (value) {
      return value;
    },
  );

  /// Replaces the whole `Team` at [field].
  SetOperation set(Team value) => SetOperation(
        field,
        TeamToJson(value),
      );

  /// Deletes the field at [field].
  DeleteOperation delete() => DeleteOperation(field);
}

class TeamFilterBuilder extends FilterBuilderRoot {
  TeamFilterBuilder({super.field});

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

  /// Selector for `startDate`.
  late final FilterField<DateTime, DateTime> startDate =
      FilterField<DateTime, DateTime>(
    field: append('startDate'),
    toJson: (value) {
      return value == null
          ? null
          : const FirestoreTimestampConverter().toJson(value);
    },
  );

  /// Selector for `users`.
  late final FilterField<List<String>, String> users =
      FilterField<List<String>, String>(
    field: append('users'),
    toJson: (value) {
      return value;
    },
    elementToJson: (value) {
      return value;
    },
  );

  /// Selector for `picturePath`.
  late final FilterField<String?, String?> picturePath =
      FilterField<String?, String?>(
    field: append('picturePath'),
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `tags`.
  late final FilterField<List<String>?, String> tags =
      FilterField<List<String>?, String>(
    field: append('tags'),
    toJson: (value) {
      return value;
    },
    elementToJson: (value) {
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

class TeamOrderByBuilder extends OrderByBuilderRoot {
  TeamOrderByBuilder({
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

  /// Selector for `startDate`.
  late final OrderByField<DateTime> startDate = OrderByField(
    field: append('startDate'),
    context: _context,
  );

  /// Selector for `users`.
  late final OrderByField<List<String>> users = OrderByField(
    field: append('users'),
    context: _context,
  );

  /// Selector for `picturePath`.
  late final OrderByField<String?> picturePath = OrderByField(
    field: append('picturePath'),
    context: _context,
  );

  /// Selector for `tags`.
  late final OrderByField<List<String>?> tags = OrderByField(
    field: append('tags'),
    context: _context,
  );

  /// The document ID pseudo-field.
  late final OrderByField<String> documentId = OrderByField(
    field: const DocumentIdNode(),
    context: _context,
  );
}

class TeamAggregateBuilder extends AggregateBuilderRoot {
  TeamAggregateBuilder({
    super.field,
    required AggregateContext context,
  }) : _context = context;

  final AggregateContext _context;

  @override
  int count() => _context.resolve(const CountOperation('count'));
}

class TeamPipelineSelector extends PipelineFieldNode {
  TeamPipelineSelector({
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

  /// Selector for `startDate`.
  late final PipelineField<DateTime> startDate = PipelineField(
    components: [...components, 'startDate'],
    context: $ctx,
    toJson: (value) {
      return value == null
          ? null
          : const FirestoreTimestampConverter().toJson(value);
    },
  );

  /// Selector for `users`.
  late final PipelineField<List<String>> users = PipelineField(
    components: [...components, 'users'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `picturePath`.
  late final PipelineField<String?> picturePath = PipelineField(
    components: [...components, 'picturePath'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );

  /// Selector for `tags`.
  late final PipelineField<List<String>?> tags = PipelineField(
    components: [...components, 'tags'],
    context: $ctx,
    toJson: (value) {
      return value;
    },
  );
}

extension TeamPipelineExtension<S extends FirestoreSchema>
    on FirestoreCollection<S, Team, TeamPatchBuilder, TeamFilterBuilder,
        TeamOrderByBuilder, TeamAggregateBuilder> {
  TypedPipeline<Team, TeamPipelineSelector> pipeline() => TypedPipeline(
        ref.firestore.pipeline().collection(ref.path),
        TeamFromJson,
        'id',
        (context) => TeamPipelineSelector(context: context),
      );
}
