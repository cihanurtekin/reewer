import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:reewer/generated/l10n.dart';
import 'package:reewer/tools/color_helper.dart';
import 'package:reewer/tools/locator.dart';
import 'package:reewer/tools/routes.dart';
import 'package:reewer/view/login_page.dart';
import 'package:reewer/view_model/login_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => S.of(context).appTitle,
      theme: ThemeData(
        primarySwatch: ColorHelper.createPrimarySwatch(),
        fontFamily: 'Poppins',
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
      ],
      home: ChangeNotifierProvider(
        create: (context) => LoginViewModel(),
        child: LoginPage(),
      ),
      routes: Routes.getRoutes(),
    );
  }
}
