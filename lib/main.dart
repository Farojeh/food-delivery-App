import 'package:advanced_project/Auth/model/user_model.dart';
import 'package:advanced_project/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? userInfo;
UserModel? mainuser;
void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   userInfo = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis"
      ),
    );
  }
}
