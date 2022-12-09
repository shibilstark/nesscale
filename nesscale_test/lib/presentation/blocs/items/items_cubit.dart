import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nesscale_test/core/failures/failure.dart';
import 'package:nesscale_test/data/repository_impl/item_repository_impl/item_repository_impl.dart';
import 'package:nesscale_test/domain/model/item_model/item_model.dart';
import 'package:nesscale_test/domain/respository/items_repository/items_repository.dart';
part 'items_state.dart';

@injectable
class ItemsCubit extends Cubit<ItemsState> {
  ItemsCubit(this.itemReposrtory) : super(ItemsInitial());
  final ItemsRepository itemReposrtory;

  void loadItems() async {
    emit(ItemsLoading());
    final result = await itemReposrtory.getAllItems();
    result.fold((customers) {
      emit(ItemsSuccess(customers));
    }, (failure) {
      emit(ItemsError(failure));
    });
  }

  void createNewItem(ItemModel model) async {
    final result = await itemReposrtory.createNewItem(model);
    result.fold((success) {
      final newState = state;

      if (newState is ItemsSuccess) {
        emit(ItemsSuccess(List.from(newState.items)..add(model)));
      } else {
        loadItems();
      }
    }, (failure) {
      emit(ItemsError(failure));
    });
  }

  void deleteItem(String id) async {
    final result = await itemReposrtory.deleteItem(id);
    result.fold((success) {
      final newState = state;

      if (newState is ItemsSuccess) {
        emit(ItemsSuccess(List.from(newState.items)
          ..retainWhere((element) => element.id == id)));
      } else {
        loadItems();
      }
    }, (failure) {
      emit(ItemsError(failure));
    });
  }
}
