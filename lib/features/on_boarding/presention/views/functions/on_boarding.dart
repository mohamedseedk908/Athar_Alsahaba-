import '../../../../../core/database/cache/cache_helper.dart';
import '../../../../../core/services/services_locator.dart';

void onBardingVisited(){
  getIt<CacheHelper>().saveData(key: 'isOnBoardingVisisted', value: true);
}