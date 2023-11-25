import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_answers_event.dart';
part 'add_answers_state.dart';

class AddAnswersBloc extends Bloc<AddAnswersEvent, AddAnswersState> {
  AddAnswersBloc() : super(AddAnswersInitial()) {
    on<AddAnswersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
