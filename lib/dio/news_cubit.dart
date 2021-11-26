import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsStates {}

class InitNewsState extends NewsStates {}

class BottomNavigationState extends NewsStates {}

class GetNewsState extends NewsStates {}

class GetSearchNewsState extends NewsStates {}
class LoadingSearchNewsState extends NewsStates {}

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit(NewsStates initialState) : super(initialState);

  static NewsCubit get(context) => BlocProvider.of(context);

  List<dynamic> businessNews = [];
  List<dynamic> sportsNews = [];
  List<dynamic> scienceNews = [];

  int bottomNavigationIndex = 0;

  void changeBottomNavigationIndex(int newIndex) {
    bottomNavigationIndex = newIndex;
    emit(BottomNavigationState());
  }

  void getAllNews() async {
    businessNews = await getNews(category: "business");
    sportsNews = await getNews(category: "sports");
    scienceNews = await getNews(category: "science");
    emit(GetNewsState());
  }

  Future<List<dynamic>> getNews({
    String country = "eg",
    String category = "business",
  }) async {
    var response = await Dio()
        .get("https://newsapi.org/v2/top-headlines", queryParameters: {
      'country': country,
      'category': category,
      'apiKey': 'fa72aea7f1af46a6a45be8aa23e21b64',
    });

    var list = response.data['articles'];

    return list;
  }


  List<dynamic> searchNewsList = [];
  bool isNewsVisible = false;

  getSearchNews({
    String q = "eg",
  }) async {
    isNewsVisible = true;
    searchNewsList.clear();
    emit(LoadingSearchNewsState());

    var response = await Dio()
        .get("https://newsapi.org/v2/everything", queryParameters: {
      'q': q,
      'from' : '2021-10-19',
      'sortBy' : 'publishedAt',
      'apiKey': 'fa72aea7f1af46a6a45be8aa23e21b64',
    });

    searchNewsList = response.data['articles'];
    emit(GetSearchNewsState());
  }


}
