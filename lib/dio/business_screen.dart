import 'package:flutter/material.dart';
import 'package:flutter_app_friday/components.dart';
import 'package:flutter_app_friday/dio/news_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: myNewsListView(NewsCubit.get(context).businessNews),
        );
      },
    );
  }
}
