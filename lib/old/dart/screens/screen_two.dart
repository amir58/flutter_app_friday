
import 'BaseScreen.dart';

class ScreenTwo extends BaseScreen{

  void build(){

    if(super.isWifiEnable()){
      print('Show dialog');
      return;
    }

    if(super.isNetworkAvailable()){
      print('Show dialog');
      return;
    }

    startLoadingAnimation();

    super.stopLoadingAnimation();

  }

  @override
  void startLoadingAnimation() {

  }
}