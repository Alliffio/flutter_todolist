class ClassPenangkap {
  int _id;
  String _nama;
  String _nomor;

  ClassPenangkap(this._nama, this._nomor);

  ClassPenangkap.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama = map['nama'];
    this._nomor = map['nomor'];
  }

  int get id => _id;
  String get nama => _nama;
  String get nomor => _nomor;

  set nama(String value) {
    _nama = value;
  }

  set nomor(String value) {
    _nomor = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = nama;
    map['nomor'] = nomor;
    return map;
  }
}
