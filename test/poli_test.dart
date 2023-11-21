import 'package:flutter_test/flutter_test.dart';
import 'package:medcare/model/poli_model.dart';

void main() {
  group('PoliModel Tests', () {
    test('PoliModel Initialization', () {
      PoliModel poliModel = PoliModel(nama: 'Test Poli');

      // Verifikasi bahwa PoliModel dibuat dengan benar
      expect(poliModel.nama, 'Test Poli');
      expect(poliModel.id, isNull);
    });

    test('PoliModel toMap', () {
      PoliModel poliModel = PoliModel(nama: 'Test Poli');

      // Ubah PoliModel menjadi Map List
      Map<String, dynamic> poliMap = poliModel.toMap();

      // Map List berisi dengan data yang diinginkan
      expect(poliMap['nama'], 'Test Poli');
      expect(poliMap['id'], isNull);
    });
  });
}
