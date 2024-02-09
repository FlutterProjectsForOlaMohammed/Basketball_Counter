import 'package:basketballcounter/Widgets/team_A_container.dart';
import 'package:basketballcounter/Widgets/team_B_container.dart';
import 'package:flutter/material.dart';

class TeamsRow extends StatelessWidget {
  const TeamsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TeamAContainer(
          text: "Team A",
        ),
        SizedBox(
          height: 500,
          child: VerticalDivider(
            indent: 50,
            endIndent: 50,
            color: Color.fromARGB(255, 219, 219, 225),
            thickness: 2,
          ),
        ),
        TeamBContainer(
          text: "Team B",
        )
      ],
    );
  }
}
