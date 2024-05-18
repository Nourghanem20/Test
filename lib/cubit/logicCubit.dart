import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled13/account.dart';
import 'package:untitled13/cubit/logicState.dart';
import 'package:untitled13/explore.dart';
import 'package:untitled13/favourite.dart';
import '../cart.dart';
import '../home-page.dart';

class LogicCubit extends Cubit<LogicState> {
  LogicCubit() : super(LogicStateInitial());

  static LogicCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = const[
    Home(),
    Explore(),
    Cart(),
    Favourite(),
    Account(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndexBottomNavigationBar());
  }
}
