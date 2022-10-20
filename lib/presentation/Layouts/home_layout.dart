import 'package:flutter/material.dart';
import 'package:tatwerassis/business_logic/cubit/app_cubit.dart';
import 'package:tatwerassis/business_logic/states/app_states.dart';
import 'package:tatwerassis/presentation/screens/home.dart';
import 'package:tatwerassis/presentation/screens/stroke.dart';
import 'package:tatwerassis/presentation/screens/wallet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/profile.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    List <Widget> screens=[
      Home(),
      Stroke(),
      Wallet(),
      Profile(),
    ];

    return BlocProvider(
      create: (context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        builder: (context,state){
          return Scaffold(
            body: screens[AppCubit.get(context).currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedIconTheme:IconThemeData(
                  color: Colors.black,
                  size: 25
              ) ,
              unselectedIconTheme:IconThemeData(
                color: Colors.grey,
                size:20,
              ) ,

              unselectedItemColor: Colors.grey,
              selectedLabelStyle: const TextStyle(
              ),
              unselectedLabelStyle:const TextStyle(
              ),
              unselectedFontSize: 10,
              selectedFontSize: 13,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: AppCubit.get(context).currentIndex,
              onTap: (value){
                AppCubit.get(context).navigateScreen(value,context);
              },
              elevation: 0,

              items: const[
                BottomNavigationBarItem(
                    icon:  ImageIcon(
                      const AssetImage("assets/images/Home.png"),
                      color:Colors.black,
                    ),
                    label: 'home'
                ),
                BottomNavigationBarItem(
                    icon:  ImageIcon(
                      const AssetImage("assets/images/Stroke 1.png"),
                      color:Colors.black,
                    ),
                    label: 'stroke'

                ),
                BottomNavigationBarItem(
                    icon:  ImageIcon(
                      const AssetImage("assets/images/Wallet.png"),
                      color:Colors.black,
                    ),
                    label: 'wallet'
                ),
                BottomNavigationBarItem(
                  icon:  ImageIcon(
                    const AssetImage("assets/images/Profile.png"),
                    color:Colors.black,
                  ),
                  label: 'profile',
                ),
              ],
            ),
          );
        },
        listener: (context,state){},
      ),
    );
  }
}
