import 'package:dto/models/recipe.dart';
import 'package:firestore_odm/firestore_odm.dart';
import 'models/user.dart';
import 'models/team.dart';
import 'models/my_transaction.dart';

part 'schema.g.dart';

class AppSchema extends FirestoreSchema {
  const AppSchema();
}

@Schema()
@Collection<User>('users')
@Collection<Recipe>('users/*/recipes')
@Collection<Recipe>('recipes')
@Collection<Team>('teams')
@Collection<MyTransaction>('teams/*/transactions')
@Collection<User>('teams/*/transactions/*/concerns')
const appSchema = AppSchema();


