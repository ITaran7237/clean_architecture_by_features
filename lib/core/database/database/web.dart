import '../coins_database.dart';
import 'package:drift/web.dart';

Database constructDb({bool logStatements = false}) {
  return Database(WebDatabase('db', logStatements: logStatements));
}