import 'package:basketball_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(Counter_A_Increment_State() as CounterState);
  int teamAPoints = 0;

  int teamBPoints = 0;

  void Team_Increment({required String team, required int buttonNum}) {
    if (team == "A") {
      teamAPoints += buttonNum;
      //emit which return the new state of UI after achieve  a specific function
      emit(Counter_A_Increment_State());
    } else {
      teamBPoints += buttonNum;
      //emit which return the new state of UI after achieve  a specific function
      emit(Counter_B_Increment_State());
    }
  }

  //void Team_B_Increment(int buttonNum) {}
}
