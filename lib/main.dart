import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/increment_bloc.dart';
import 'ui/increment_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Pattern',
      home: BlocProvider(
        create: (context) => IncrementBloc(),
        child: const IncrementPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
