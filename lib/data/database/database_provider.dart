import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseProvider {
  static final DatabaseProvider dbProvider = DatabaseProvider();

  final _database = FirebaseFirestore.instance;

  Future<FirebaseFirestore> get database async => _database;
}