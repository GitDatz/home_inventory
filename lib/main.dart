import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_inventory/cubit/article_cubit.dart';
import 'package:home_inventory/data/repository/article_repository.dart';
import 'package:home_inventory/utils/constants.dart';
import 'package:home_inventory/ui/pages/root_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiBlocProvider(providers: [BlocProvider<ArticleCubit>(create: (context) => ArticleCubit(ArticleRepository()))], child: HomeInventoryApp()));
}

class HomeInventoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: BACKGROUND_COLOR,
        primarySwatch: Colors.blueGrey,
      ),
      home: RootPage()
    );
  }
}
