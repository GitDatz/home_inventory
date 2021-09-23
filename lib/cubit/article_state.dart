import 'package:equatable/equatable.dart';
import 'package:home_inventory/data/model/article_model.dart';

abstract class ArticleState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends ArticleState { }
class CreatingState extends ArticleState { }
class CreatedState extends ArticleState { }
class LoadingState extends ArticleState { }
class LoadedState extends ArticleState {
  LoadedState(this.articles);

  final List<Article> articles;

  @override
  List<Object> get props => [articles];
}

class UpdatingState extends ArticleState { }
class UpdatedState extends ArticleState { }
class DeletingState extends ArticleState { }
class DeletedState extends ArticleState { }

class ErrorState extends ArticleState {
  ErrorState(this.error);

  final String error;
}
