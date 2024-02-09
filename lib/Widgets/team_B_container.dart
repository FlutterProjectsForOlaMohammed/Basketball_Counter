import 'package:basketballcounter/Widgets/custom_button.dart';
import 'package:basketballcounter/cubits/change%20home%20view/change_home_view_cubit.dart';
import 'package:basketballcounter/cubits/change%20home%20view/change_home_view_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamBContainer extends StatelessWidget {
  const TeamBContainer({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeHomeViewCubit, States>(
      builder: (context, state) {
        return SizedBox(
          width: 150,
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 218,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    BlocProvider.of<ChangeHomeViewCubit>(context)
                        .teamBPoints
                        .toString(),
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                ),
              ),
              CustomButton(
                  onPressed: () {
                    BlocProvider.of<ChangeHomeViewCubit>(context)
                        .addPointstoTeamB(points: 1);
                  },
                  text: "Add 1 Point"),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  onPressed: () {
                    BlocProvider.of<ChangeHomeViewCubit>(context)
                        .addPointstoTeamB(points: 2);
                  },
                  text: "Add 2 Points"),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  onPressed: () {
                    BlocProvider.of<ChangeHomeViewCubit>(context)
                        .addPointstoTeamB(points: 3);
                  },
                  text: "Add 3 Points")
            ],
          ),
        );
      },
    );
  }
}
