class BaseScreen {
  bool isWifiEnable() {
    return true;
  }

  bool isNetworkAvailable() {
    return true;
  }

  void startLoadingAnimation() {
    print('Loading start');
  }

  void stopLoadingAnimation() {
    print('Loading stop');
  }
}
