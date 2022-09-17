import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newocean/page/achievements/temp/shared/cubit/cubit.dart';
import 'package:newocean/page/achievements/temp/shared/cubit/states.dart';
import 'layout/shop_app/cubit/cubit.dart';
import 'layout/shop_app/shoplayout.dart';
import 'modules/shop_app/shop_login/cubit/cubit.dart';
import 'modules/shop_app/shop_login/shop_login_screen.dart';
import 'shared/bloc_observer.dart';
import 'shared/components/constants.dart';
import 'shared/network/local/cache_helper.dart';
import 'shared/network/remote/dio_helper.dart';
import 'shared/styles/themes.dart';

// void main() async {
//   // be sure all methods finished  to run the app
//   Bloc.observer = MyBlocObserver();
//   WidgetsFlutterBinding.ensureInitialized();
//
//   DioHelper.init();
//   await CacheHelper.init();
//   //ddd
//
//   bool? isDarkMode = CacheHelper.getData(key: 'isDarkMode');
//
//   Widget widget;
//   bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
//   token = CacheHelper.getData(key: 'token');
//   widget = ShopLayoutScreen();
//   // if (onBoarding != null) {
//   //   if (token != null) {
//   //     widget = ShopLayoutScreen();
//   //   } else {
//   //     widget = ShopLoginScreen();
//   //   }
//   // } else {
//   //   widget = OnBoardingScreen();
//   // }
//
//   runApp(Shop(isDarkMode, widget, token));
// }

// ignore: must_be_immutable
class Shop extends StatelessWidget {
  bool? isDarkMode;
  late final Widget startWidget;
  String? token;

  Shop(this.isDarkMode, this.startWidget, String? token, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AppCubit()
            ..changeAppMode(
              fromShared: isDarkMode,
            ),
        ),
        BlocProvider(
          create: (BuildContext context) => ShopLoginCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => ShopCubit()
            ..getHomeData()
            ..getCategoryData()
            ..getFavoriteData()
            ..getProfileData()
            ..getCartData()
            ..getAddresses()
            ..getOrders(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return ShopLayoutScreen();
          // return MaterialApp(
          //   debugShowCheckedModeBanner: false,
          //   themeMode: AppCubit.get(context).isDarkMode
          //       ? ThemeMode.light
          //       : ThemeMode.dark,
          //   home: AnimatedSplashScreen(
          //     splash: null,
          //     nextScreen: startWidget,
          //     animationDuration: const Duration(milliseconds: 10),
          //   ),
          //   theme: MyTheme.lightTheme,
          //   darkTheme: MyTheme.darkTheme,
          //   builder: BotToastInit(),
          //   navigatorObservers: [BotToastNavigatorObserver()],
          // );
        },
      ),
    );
  }
}
