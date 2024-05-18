import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled13/cubit/logicCubit.dart';
import 'package:untitled13/cubit/logicState.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogicCubit(),
      child: BlocConsumer<LogicCubit, LogicState>(
        listener: (context, state) {},
        builder: (context, state) {
          LogicCubit cubit = LogicCubit.get(context);
          return Scaffold(
            appBar: AppBar(),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: const Color(0xFF53B175) ,
              unselectedItemColor: Colors.black,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/store.svg'),
                    label: 'Shop'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/explore.svg',color: Colors.black,),
                    label: 'Explore'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/cartgreen.svg'),
                    label: 'Cart'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/favorite.svg'),
                    label: 'Favourite'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/person.svg'),
                    label: 'Account'),
              ],


              selectedLabelStyle: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
              ),
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
