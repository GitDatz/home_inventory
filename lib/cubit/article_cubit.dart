import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_inventory/cubit/article_state.dart';
import 'package:home_inventory/data/model/article_model.dart';
import 'package:home_inventory/data/repository/article_repository.dart';

class ArticleCubit extends Cubit<ArticleState> {
  final ArticleRepository _repository;

  ArticleCubit(this._repository) : super(InitialState());

  void createArticle(Article article) async {
    try {
      emit(CreatingState());
      await _repository.createArticle(article);
      emit(CreatedState());
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  void getArticles() async {
    try {
      emit(LoadingState());
      final articles = await _repository.getAllArticles();
      emit(LoadedState(articles));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  void updateArticle(Article article) async {
    try {
      emit(UpdatingState());
      await _repository.updateArticle(article);
      emit(UpdatedState());
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }

  void deleteArticle(Article article) async {
    try {
      emit(DeletingState());
      await _repository.deleteArticle(article);
      emit(DeletedState());
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }
}