import 'package:basketballcounter/Widgets/home_body.dart';
import 'package:basketballcounter/cubits/change%20home%20view/change_home_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeHomeViewCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Points Counter",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange,
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
