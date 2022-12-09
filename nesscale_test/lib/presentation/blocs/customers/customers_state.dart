part of 'customers_cubit.dart';

abstract class CustomersState extends Equatable {}

class CustomersInitial extends CustomersState {
  @override
  List<Object?> get props => [];
}

class CustomersLoading extends CustomersState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class CustomersError extends CustomersState {
  final AppFailure failure;
  CustomersError(this.failure);
  @override
  List<Object?> get props => [failure];
}

class CustomersSuccess extends CustomersState {
  final List<CustomerModel> customers;
  CustomersSuccess(this.customers);
  @override
  List<Object?> get props => [customers];
}
