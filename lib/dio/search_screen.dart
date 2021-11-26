import 'package:flutter/material.dart';
import 'package:flutter_app_friday/components.dart';
import 'package:flutter_app_friday/dio/news_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Search news"),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: myTextFormField(
                  controller: searchController,
                  validator: (value) => searchValidator(value),
                  prefixIcon: Icons.search,
                  inputAction: TextInputAction.search,
                  onFieldSubmitted: (value) =>
                      NewsCubit.get(context).getSearchNews(q: value),
                  label: "Search",
                ),
              ),
              Expanded(
                  child: Visibility(
                      visible: NewsCubit.get(context).isNewsVisible,
                      child: myNewsListView(
                          NewsCubit.get(context).searchNewsList))),
            ],
          ),
        );
      },
    );
  }

  String searchValidator(String value) {
    if (value.isEmpty) return "Search required";
    return null;
  }
}
