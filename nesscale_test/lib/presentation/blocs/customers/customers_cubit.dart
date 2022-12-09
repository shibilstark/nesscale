import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nesscale_test/core/failures/failure.dart';
import 'package:nesscale_test/domain/model/customer_model/customer_model.dart';
import 'package:nesscale_test/domain/respository/customer_repository/customer_repository.dart';

part 'customers_state.dart';

@injectable
class CustomersCubit extends Cubit<CustomersState> {
  final CustomerRepository customerRepository;
  CustomersCubit(this.customerRepository) : super(CustomersInitial());

  void loadCustomers() async {
    emit(CustomersLoading());
    final result = await customerRepository.getAllCustomers();

    result.fold((customers) {
      emit(CustomersSuccess(customers));
    }, (failure) {
      emit(CustomersError(failure));
    });
  }

  void createNewCustomer(CustomerModel model) async {
    final result = await customerRepository.createNewCustomer(model);
    result.fold((success) {
      final newState = state;

      if (newState is CustomersSuccess) {
        emit(CustomersSuccess(List.from(newState.customers)..add(model)));
      } else {
        loadCustomers();
      }
    }, (failure) {
      emit(CustomersError(failure));
    });
  }

  void deleteCustomer(String id) async {
    final result = await customerRepository.deleteCustomer(id);
    result.fold((success) {
      final newState = state;

      if (newState is CustomersSuccess) {
        emit(CustomersSuccess(List.from(newState.customers)
          ..retainWhere((element) => element.id == id)));
      } else {
        loadCustomers();
      }
    }, (failure) {
      emit(CustomersError(failure));
    });
  }
}
