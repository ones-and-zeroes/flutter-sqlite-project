import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//data object model
class Dog {
  final int id;
  final String name;
  final int age;
  Dog({this.id, this.name, this.age});
}

// Open the database and store the reference.
final Future<Database> database = openDatabase(
  // Set the path to the database. Note: Using the `join` function from the
  // `path` package is best practice to ensure the path is correctly
  // constructed for each platform.
    join(await getDatabasesPath(), 'dog_database.db'),
);
