import 'package:drift/drift.dart';

@UseRowClass(SourceEntry)
class SourceEntries extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get license => text()();
  TextColumn get link => text()();
}

class SourceEntry {
  final int id;
  final String name;
  final String license;
  final String link;

  SourceEntry({
    required this.id,
    required this.name,
    required this.license,
    required this.link,
  });
}

class Source {
  final int? id;
  final String name;
  final String license;
  final String link;

  Source({
    this.id,
    required this.name,
    required this.license,
    required this.link,
  });

  Source.fromEntry(SourceEntry entry)
      : this(
          id: entry.id,
          name: entry.name,
          license: entry.license,
          link: entry.link,
        );
}
