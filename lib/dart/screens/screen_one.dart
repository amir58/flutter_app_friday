
import 'BaseScreen.dart';

class ScreenOne extends BaseScreen{

  void build(){

    if(super.isWifiEnable()){
      print('Show dialog');
      return;
    }

    if(super.isNetworkAvailable()){
      print('Show dialog');
      return;
    }

    super.startLoadingAnimation();

    super.stopLoadingAnimation();

  }

}
