import 'package:nesscale_test/domain/injection/di.dart';
import 'package:nesscale_test/presentation/blocs/customers/customers_cubit.dart';
import 'package:nesscale_test/presentation/blocs/items/items_cubit.dart';

class BlocProviderSingleton {
  static late final CustomersCubit customersCubit;
  static late final ItemsCubit itemsCubit;

  static initialize() {
    customersCubit = getIt<CustomersCubit>();
    itemsCubit = getIt<ItemsCubit>();
  }
}
