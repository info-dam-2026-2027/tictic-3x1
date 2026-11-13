// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// Generator: SchemaGenerator2
// **************************************************************************

extension AppSchemaFirestoreODMExtension on FirestoreODM<AppSchema> {
  FirestoreCollection<AppSchema, User, UserPatchBuilder, UserFilterBuilder,
          UserOrderByBuilder, UserAggregateBuilder>
      get users => FirestoreCollection(
            ref: firestore.collection('users'),
            toJson: (User value) {
              return UserToJson(value) ?? const <String, dynamic>{};
            },
            fromJson: UserFromJson,
            documentIdField: 'id',
            patchBuilderFactory: () => UserPatchBuilder(),
            filterBuilder: UserFilterBuilder(),
            orderByBuilderFunc: (context) =>
                UserOrderByBuilder(context: context),
            aggregateBuilderFunc: (context) =>
                UserAggregateBuilder(context: context),
          );

  FirestoreCollection<AppSchema, Product, ProductPatchBuilder,
          ProductFilterBuilder, ProductOrderByBuilder, ProductAggregateBuilder>
      get products => FirestoreCollection(
            ref: firestore.collection('products'),
            toJson: (Product value) {
              return ProductToJson(value) ?? const <String, dynamic>{};
            },
            fromJson: ProductFromJson,
            documentIdField: 'id',
            patchBuilderFactory: () => ProductPatchBuilder(),
            filterBuilder: ProductFilterBuilder(),
            orderByBuilderFunc: (context) =>
                ProductOrderByBuilder(context: context),
            aggregateBuilderFunc: (context) =>
                ProductAggregateBuilder(context: context),
          );

  FirestoreCollection<AppSchema, Recipe, RecipePatchBuilder,
          RecipeFilterBuilder, RecipeOrderByBuilder, RecipeAggregateBuilder>
      usersRecipes(String p1) => FirestoreCollection(
            ref: firestore.collection("users/${p1}/recipes"),
            toJson: (Recipe value) {
              return RecipeToJson(value) ?? const <String, dynamic>{};
            },
            fromJson: RecipeFromJson,
            documentIdField: 'id',
            patchBuilderFactory: () => RecipePatchBuilder(),
            filterBuilder: RecipeFilterBuilder(),
            orderByBuilderFunc: (context) =>
                RecipeOrderByBuilder(context: context),
            aggregateBuilderFunc: (context) =>
                RecipeAggregateBuilder(context: context),
          );

  FirestoreCollection<AppSchema, Recipe, RecipePatchBuilder,
          RecipeFilterBuilder, RecipeOrderByBuilder, RecipeAggregateBuilder>
      get recipes => FirestoreCollection(
            ref: firestore.collection('recipes'),
            toJson: (Recipe value) {
              return RecipeToJson(value) ?? const <String, dynamic>{};
            },
            fromJson: RecipeFromJson,
            documentIdField: 'id',
            patchBuilderFactory: () => RecipePatchBuilder(),
            filterBuilder: RecipeFilterBuilder(),
            orderByBuilderFunc: (context) =>
                RecipeOrderByBuilder(context: context),
            aggregateBuilderFunc: (context) =>
                RecipeAggregateBuilder(context: context),
          );

  FirestoreCollection<AppSchema, Team, TeamPatchBuilder, TeamFilterBuilder,
          TeamOrderByBuilder, TeamAggregateBuilder>
      get teams => FirestoreCollection(
            ref: firestore.collection('teams'),
            toJson: (Team value) {
              return TeamToJson(value) ?? const <String, dynamic>{};
            },
            fromJson: TeamFromJson,
            documentIdField: 'id',
            patchBuilderFactory: () => TeamPatchBuilder(),
            filterBuilder: TeamFilterBuilder(),
            orderByBuilderFunc: (context) =>
                TeamOrderByBuilder(context: context),
            aggregateBuilderFunc: (context) =>
                TeamAggregateBuilder(context: context),
          );

  FirestoreCollection<
      AppSchema,
      MyTransaction,
      MyTransactionPatchBuilder,
      MyTransactionFilterBuilder,
      MyTransactionOrderByBuilder,
      MyTransactionAggregateBuilder> teamsTransactions(
          String p1) =>
      FirestoreCollection(
        ref: firestore.collection("teams/${p1}/transactions"),
        toJson: (MyTransaction value) {
          return MyTransactionToJson(value) ?? const <String, dynamic>{};
        },
        fromJson: MyTransactionFromJson,
        documentIdField: 'id',
        patchBuilderFactory: () => MyTransactionPatchBuilder(),
        filterBuilder: MyTransactionFilterBuilder(),
        orderByBuilderFunc: (context) =>
            MyTransactionOrderByBuilder(context: context),
        aggregateBuilderFunc: (context) =>
            MyTransactionAggregateBuilder(context: context),
      );

  FirestoreCollection<AppSchema, User, UserPatchBuilder, UserFilterBuilder,
      UserOrderByBuilder, UserAggregateBuilder> teamsTransactionsConcerns(
    String p1,
    String p2,
  ) =>
      FirestoreCollection(
        ref: firestore.collection("teams/${p1}/transactions/${p2}/concerns"),
        toJson: (User value) {
          return UserToJson(value) ?? const <String, dynamic>{};
        },
        fromJson: UserFromJson,
        documentIdField: 'id',
        patchBuilderFactory: () => UserPatchBuilder(),
        filterBuilder: UserFilterBuilder(),
        orderByBuilderFunc: (context) => UserOrderByBuilder(context: context),
        aggregateBuilderFunc: (context) =>
            UserAggregateBuilder(context: context),
      );
}
