import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_question_event.dart';
part 'add_question_state.dart';

class AddQuestionBloc extends Bloc<AddQuestionEvent, AddQuestionState> {
  AddQuestionBloc() : super(AddQuestionInitial()) {
    on<AddQuestionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
