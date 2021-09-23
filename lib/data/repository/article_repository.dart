import 'package:home_inventory/data/dao/article_dao.dart';
import 'package:home_inventory/data/model/article_model.dart';

class ArticleRepository {
  final _articleDao = ArticleDao();

  Future createArticle(Article article) => _articleDao.createArticle(article);
  Future<List<Article>> getAllArticles() => _articleDao.getAllArticles();
  Future<List<Article>> getArticlesFromCategory(String category) => _articleDao.getArticlesFromCategory(category);
  Future updateArticle(Article article) => _articleDao.update(article);
  Future deleteArticle(Article article) => _articleDao.deleteArticle(article);
}