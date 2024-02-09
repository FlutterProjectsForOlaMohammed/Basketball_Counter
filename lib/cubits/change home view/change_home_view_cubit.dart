import 'package:basketballcounter/cubits/change%20home%20view/change_home_view_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeHomeViewCubit extends Cubit<States> {
  ChangeHomeViewCubit() : super(InitialPointsState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  addPointstoTeamA({required int points}) {
    teamAPoints += points;
    emit(AddPointsState());
  }

  addPointstoTeamB({required int points}) {
    teamBPoints += points;
    emit(AddPointsState());
  }

  resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(ResetPointsState());
  }
}
