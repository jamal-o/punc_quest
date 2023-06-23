import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';
import 'screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(const PuctQuestApp());
}

class PuctQuestApp extends MaterialApp {
  const PuctQuestApp({super.key});

  @override
  State<PuctQuestApp> createState() => _PuctQuestAppState();
}

class _PuctQuestAppState extends State<PuctQuestApp> {
  late final _routerProvider = AppRouter();
  late final _router = _routerProvider.router;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => _routerProvider,
        ),
      ],
      child: Consumer<AppRouter>(
        builder: (context, value, child) {
          return MaterialApp.router(
            theme: ThemeData(primarySwatch: Colors.deepPurple),
            debugShowCheckedModeBanner: false,
            title: 'PuctQuest',
            routerDelegate: _router.routerDelegate,
            routeInformationParser: _router.routeInformationParser,
            routeInformationProvider: _router.routeInformationProvider,
          );
        },
      ),
    );
  }
}

enum ScreenSize { Small, Normal, Large, ExtraLarge }

ScreenSize getSize(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.shortestSide;
  if (deviceWidth > 900) return ScreenSize.ExtraLarge;
  if (deviceWidth > 600) return ScreenSize.Large;
  if (deviceWidth > 300) return ScreenSize.Normal;
  return ScreenSize.Small;
}
