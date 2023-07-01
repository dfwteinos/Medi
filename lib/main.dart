import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:monkey_app_demo/screens/changeAddressScreen.dart';
import 'package:monkey_app_demo/screens/mapScreen.dart';

import './screens/landingScreen.dart';
import './screens/loginScreen.dart';
import './screens/signUpScreen.dart';
import './screens/forgetPwScreen.dart';

import './screens/newPwScreen.dart';
import './screens/introScreen.dart';
import './screens/homeScreen.dart';
import './screens/menuScreen.dart';
import './screens/moreScreen.dart';

import './screens/dessertScreen.dart';
import './screens/individualItem.dart';
import './screens/paymentScreen.dart';

import './screens/aboutScreen.dart';
import './screens/inboxScreen.dart';
import './screens/myOrderScreen.dart';

import './const/colors.dart';
import 'classes/screenarguments.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.primary,
            ),
            backgroundColor: MaterialStateProperty.all(
              AppColor.iceblue,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: LoginScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case DessertScreen.routeName:
            var screenTitle = settings.arguments;

            return MaterialPageRoute(
              builder: (context) => DessertScreen(
                name: screenTitle,
              ),
            );
          case IndividualItem.routeName:
            final args = settings.arguments as ScreenArguments;

            return MaterialPageRoute(
              builder: (context) => IndividualItem(
                name: args.name,
                image: args.image,
              ),
            );

          default:
        }

        return null;
      },
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPwScreen.routeName: (context) => ForgetPwScreen(),

        NewPwScreen.routeName: (context) => NewPwScreen(),
        IntroScreen.routeName: (context) => IntroScreen(),
        // HomeScreen.routeName: (context) => HomeScreen(),
        HomeScreen.routeName: (context) => MenuScreen(),
        // MenuScreen.routeName: (context) => MenuScreen(),
        MenuScreen.routeName: (context) => HomeScreen(),

        MoreScreen.routeName: (context) => MoreScreen(),
        // DessertScreen.routeName: (context) => DessertScreen(),
        // IndividualItem.routeName: (context) => IndividualItem(),
        PaymentScreen.routeName: (context) => PaymentScreen(),

        AboutScreen.routeName: (context) => AboutScreen(),
        InboxScreen.routeName: (context) => InboxScreen(),
        MyOrderScreen.routeName: (context) => MyOrderScreen(),

        ChangeAddressScreen.routeName: (context) => ChangeAddressScreen(),
        MapSample.routeName: (context) => MapSample(),
      },
    );
  }
}
