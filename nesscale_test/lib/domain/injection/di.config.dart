// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository_impl/customer_repository_impl/customer_repository_impl.dart'
    as _i4;
import '../../data/repository_impl/item_repository_impl/item_repository_impl.dart'
    as _i7;
import '../../presentation/blocs/customers/customers_cubit.dart' as _i5;
import '../../presentation/blocs/items/items_cubit.dart' as _i8;
import '../respository/customer_repository/customer_repository.dart' as _i3;
import '../respository/items_repository/items_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.CustomerRepository>(() => _i4.CustomerRepositoryImpl());
  gh.factory<_i5.CustomersCubit>(
      () => _i5.CustomersCubit(get<_i3.CustomerRepository>()));
  gh.lazySingleton<_i6.ItemsRepository>(() => _i7.ItemReposrtoryImpl());
  gh.factory<_i8.ItemsCubit>(() => _i8.ItemsCubit(get<_i6.ItemsRepository>()));
  return get;
}
