import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punc_quest/navigation_and_state/navigation.dart';
import 'screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;

  runApp(const PuctQuestApp());
}

class PuctQuestApp extends StatefulWidget {
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
