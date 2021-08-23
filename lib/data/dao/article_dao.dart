import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:home_inventory/constants.dart';
import 'package:home_inventory/data/database/database_provider.dart';
import 'package:home_inventory/data/model/article_model.dart';

class ArticleDao {
  final _databaseProvider = DatabaseProvider.dbProvider;

  Future<void> createArticle(Article article) async {
    final database = await _databaseProvider.database;
    CollectionReference collectionReference = database.collection(COLLECTION);
    return collectionReference.add({article.id, article.name, article.quantity, article.nrQuantity});
  }

  Future<List<Article>> getAllArticles() async {
    final database = await _databaseProvider.database;
    QuerySnapshot querySnapshot = await database.collection(COLLECTION).get();
    return querySnapshot.docs.map((doc) =>
      Article(id: doc.id, name: doc[JSON_NAME], quantity: doc[JSON_QUANTITY], nrQuantity: doc[JSON_NR_QUANTITY])
    ).toList();
  }

  Future<void> update(Article article) async {
    final database = await _databaseProvider.database;
    return database.collection(COLLECTION).doc(article.id).update(article.toJson());
  }

  Future<void> deleteArticle(Article article) async {
    final database = await _databaseProvider.database;
    return database.collection(COLLECTION).doc(article.id).delete();
  }
}