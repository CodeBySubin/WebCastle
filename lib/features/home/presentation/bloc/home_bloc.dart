import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webcastle/core/network/dio_exception.dart';
import 'package:webcastle/features/home/presentation/bloc/home_event.dart';
import 'package:webcastle/features/home/presentation/bloc/home_state.dart';
import '../../domain/repository/repository.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc(this.repository) : super(const HomeState.initial()) {
    on<FetchHome>(_onFetchHome);
  }

  Future<void> _onFetchHome(
    FetchHome event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    try {
      final result = await repository.getHome();
      emit(HomeState.loaded(result));
    } on AppError catch (error) {
      emit(HomeState.error(error.message));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
