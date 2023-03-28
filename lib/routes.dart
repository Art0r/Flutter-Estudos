import 'package:estudos_flutter/bloc/counter/counter_cubic.dart';
import 'package:estudos_flutter/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CounterPage.routeName,
      routes: {
        CounterPage.routeName: (context) => BlocProvider(
              create: (_) => CounterCubit(),
              child: const CounterPage(),
            ),
      },
    );
  }
}
