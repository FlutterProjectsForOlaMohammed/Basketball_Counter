import 'package:basketballcounter/Widgets/custom_button.dart';
import 'package:basketballcounter/Widgets/teams_row.dart';
import 'package:basketballcounter/cubits/change%20home%20view/change_home_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 1,
        ),
        const TeamsRow(),
        const Spacer(
          flex: 2,
        ),
        CustomButton(
          text: "Reset",
          onPressed: () {
            BlocProvider.of<ChangeHomeViewCubit>(context).resetPoints();
          },
        ),
        const Spacer(
          flex: 4,
        )
      ],
    );
  }
}
