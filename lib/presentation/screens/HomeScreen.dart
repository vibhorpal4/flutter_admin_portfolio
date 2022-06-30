// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_admin/contants/enums.dart';
import 'package:portfolio_admin/logic/cubits/Internet/internet_cubit.dart';
import 'package:portfolio_admin/presentation/widgets/CustomDrawer.dart';

import '../widgets/TableWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> datas = ['hello', 'hey'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        // automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          BlocBuilder<InternetCubit, InternetState>(builder: (context, state) {
            if (state is InternelConnected &&
                state.connectionType == ConnectionType.Mobile) {
              return SnackBar(content: Text('Mobile Data'));
            } else if (state is InternelConnected &&
                state.connectionType == ConnectionType.Wifi) {
              return SnackBar(content: Text('WiFi'));
            } else if (state is InternetDisconnected) {
              return SnackBar(content: Text('No Internet Connection'));
            }
            return CircularProgressIndicator();
          })
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
