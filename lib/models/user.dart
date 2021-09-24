class User{

  String _name;
  String _imageUrl;

  User(this._name, this._imageUrl);

  String get imageUrl => _imageUrl;

  set imageUrl(String value) {
    _imageUrl = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}