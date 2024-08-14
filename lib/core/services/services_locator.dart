import 'package:athar_alsahaba/core/database/cache/cache_helper.dart';
import 'package:athar_alsahaba/features/auth/presention/auth/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLOcator(){
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());

}
