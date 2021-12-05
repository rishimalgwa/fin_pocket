import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'finpocket_state.dart';

class FinpocketCubit extends Cubit<FinpocketState> {
  FinpocketCubit() : super(FinpocketInitial());
}
