import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webcastle/features/home/presentation/bloc/home_event.dart';
import 'package:webcastle/features/home/presentation/bloc/home_state.dart';
import 'package:webcastle/features/home/domain/repository/repository.dart';
import 'package:webcastle/core/network/dio_exception.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc(this.repository) : super(const HomeState.initial()) {
    on<FetchHome>(_onFetchHome);
    on<ToggleFavorite>(_onToggleFavorite);
    on<IncrementCount>(_onIncrementCount);
    on<DecrementCount>(_onDecrementCount);
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

  void _onToggleFavorite(
    ToggleFavorite event,
    Emitter<HomeState> emit,
  ) {
    state.maybeWhen(
      loaded: (home) {
        final updatedFields = home.data.homeFields.map((field) {
          final updatedProducts = field.products?.map((product) {
            if (product.id == event.productId) {
              return product.copyWith(isFavorite: !product.isFavorite);
            }
            return product;
          }).toList();

          return field.copyWith(products: updatedProducts);
        }).toList();

        final updatedHome = home.copyWith(
          data: home.data.copyWith(homeFields: updatedFields),
        );

        emit(HomeState.loaded(updatedHome));
      },
      orElse: () {},
    );
  }

  void _onIncrementCount(
    IncrementCount event,
    Emitter<HomeState> emit,
  ) {
    state.maybeWhen(
      loaded: (home) {
        final updatedFields = home.data.homeFields.map((field) {
          final updatedProducts = field.products?.map((product) {
            if (product.id == event.productId) {
              return product.copyWith(count: product.count + 1);
            }
            return product;
          }).toList();

          return field.copyWith(products: updatedProducts);
        }).toList();

        final updatedHome = home.copyWith(
          data: home.data.copyWith(homeFields: updatedFields),
        );

        emit(HomeState.loaded(updatedHome));
      },
      orElse: () {},
    );
  }

  void _onDecrementCount(
    DecrementCount event,
    Emitter<HomeState> emit,
  ) {
    state.maybeWhen(
      loaded: (home) {
        final updatedFields = home.data.homeFields.map((field) {
          final updatedProducts = field.products?.map((product) {
            if (product.id == event.productId && product.count > 0) {
              return product.copyWith(count: product.count - 1);
            }
            return product;
          }).toList();

          return field.copyWith(products: updatedProducts);
        }).toList();

        final updatedHome = home.copyWith(
          data: home.data.copyWith(homeFields: updatedFields),
        );

        emit(HomeState.loaded(updatedHome));
      },
      orElse: () {},
    );
  }
}
