import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:nutrifacts/nutrifacts.dart';

part 'test_database.g.dart';

@DriftDatabase(
  tables: [
    ProductEntries,
    NutrimentsEntries,
    SourceEntries,
  ],
  daos: [],
)
class TestDatabase extends _$TestDatabase {
  TestDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    return NativeDatabase.memory(logStatements: true);
  });
}
