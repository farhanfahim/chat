import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app/components/resources/app_colors.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      builder: (context,child){
        return MediaQuery(
          data:MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
          child:child!,
        );
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        dividerTheme: const DividerThemeData(
          color: AppColors.gray600,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      title: 'Chat App',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
