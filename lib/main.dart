import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_admin/logic/cubits/Internet/internet_cubit.dart';
import 'package:portfolio_admin/router/router.dart';

void main() => runApp(MyApp(
      approuter: AppRouter(),
      connectivity: Connectivity(),
    ));

class MyApp extends StatelessWidget {
  final AppRouter approuter;
  final Connectivity connectivity;

  MyApp({Key? key, required this.approuter, required this.connectivity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
            create: InternetCubit(connectivity: connectivity))
      ],
      child: MaterialApp(
        title: "Vibhor Pal",
        debugShowCheckedModeBanner: false,
        onGenerateRoute: approuter.onGenerateRoute,
        theme:
            ThemeData(primarySwatch: Colors.cyan, brightness: Brightness.light),
      ),
    );
  }
}
