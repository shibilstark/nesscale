part of 'items_cubit.dart';

abstract class ItemsState extends Equatable {}

class ItemsInitial extends ItemsState {
  @override
  List<Object?> get props => [];
}

class ItemsLoading extends ItemsState {
  @override
  List<Object?> get props => [];
}

class ItemsError extends ItemsState {
  final AppFailure failure;

  ItemsError(this.failure);
  @override
  List<Object?> get props => [failure];
}

class ItemsSuccess extends ItemsState {
  final List<ItemModel> items;
  ItemsSuccess(this.items);
  @override
  List<Object?> get props => [items];
}
