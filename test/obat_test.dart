// Import paket yang diperlukan
import 'package:flutter_test/flutter_test.dart';
import 'package:medcare/model/obat_model.dart';

// Fungsi utama untuk menjalankan unit test
void main() {
  // Kelompok tes untuk ObatModel
  group('ObatModel Tests', () {
    // Tes 1: Memastikan inisialisasi ObatModel berfungsi dengan benar
    test('ObatModel Initialization', () {
      ObatModel obatModel = ObatModel(
        title: 'Paracetamol',
        note: '3 kali sehari 1 obat setelah makan',
        isCompleted: 0,
        date: '2023-11-16',
        startTime: '12:00 PM',
        endTime: '1:00 PM',
        color: 0,
        remind: 1,
        repeat: 'daily',
      );

      // Verifikasi bahwa ObatModel dibuat dengan benar
      expect(obatModel.title, 'Paracetamol');
      expect(obatModel.note, '3 kali sehari 1 obat setelah makan');
      expect(obatModel.isCompleted, 0);
      expect(obatModel.date, '2023-11-16');
      expect(obatModel.startTime, '12:00 PM');
      expect(obatModel.endTime, '1:00 PM');
      expect(obatModel.color, 0);
      expect(obatModel.remind, 1);
      expect(obatModel.repeat, 'daily');
      expect(obatModel.id, isNull); // ID harus null saat inisialisasi
    });

    // Tes 2: Memastikan fungsi toMap() berfungsi dengan benar
    test('ObatModel toMap', () {
      ObatModel obatModel = ObatModel(
        title: 'Pamol',
        note: 'Kalo panas',
        isCompleted: 0,
        date: '2023-11-16',
        startTime: '12:00 PM',
        endTime: '1:00 PM',
        color: 0,
        remind: 1,
        repeat: 'daily',
      );

      // Memasukkan ObatModel ke dalam map
      Map<String, dynamic> obatMap = obatModel.toMap();

      // Verifikasi bahwa map berisi nilai sesuai dengan yang diharapkan
      expect(obatMap['title'], 'Pamol');
      expect(obatMap['note'], 'Kalo panas');
      expect(obatMap['isCompleted'], 0);
      expect(obatMap['date'], '2023-11-16');
      expect(obatMap['startTime'], '12:00 PM');
      expect(obatMap['endTime'], '1:00 PM');
      expect(obatMap['color'], 0);
      expect(obatMap['remind'], 1);
      expect(obatMap['repeat'], 'daily');
      expect(obatMap['id'], isNull); // ID harus null saat toMap()
    });

    // Tes 3: Memastikan fungsi fromMap() berfungsi dengan benar
    test('ObatModel fromMap', () {
      // Contoh data map yang akan diubah menjadi ObatModel
      Map<String, dynamic> obatMap = {
        'title': 'Test Title',
        'note': 'Test Note',
        'isCompleted': 0,
        'date': '2023-11-16',
        'startTime': '12:00 PM',
        'endTime': '1:00 PM',
        'color': 0,
        'remind': 1,
        'repeat': 'daily',
      };

      // Membuat ObatModel dari map
      ObatModel obatModel = ObatModel.fromMap(obatMap);

      // Verifikasi bahwa ObatModel dibuat dengan benar
      expect(obatModel.title, 'Test Title');
      expect(obatModel.note, 'Test Note');
      expect(obatModel.isCompleted, 0);
      expect(obatModel.date, '2023-11-16');
      expect(obatModel.startTime, '12:00 PM');
      expect(obatModel.endTime, '1:00 PM');
      expect(obatModel.color, 0);
      expect(obatModel.remind, 1);
      expect(obatModel.repeat, 'daily');
      expect(obatModel.id, isNull); // ID harus null saat fromMap()
    });

    // Tes 4: Memastikan fungsi toJson() berfungsi dengan benar
    test('ObatModel toJson', () {
      ObatModel obatModel = ObatModel(
        title: 'Test Title',
        note: 'Test Note',
        isCompleted: 0,
        date: '2023-11-16',
        startTime: '12:00 PM',
        endTime: '1:00 PM',
        color: 0,
        remind: 1,
        repeat: 'daily',
      );

      // Mengonversi ObatModel menjadi JSON
      String obatJson = obatModel.toJson();

      // Verifikasi bahwa JSON tidak kosong dan berisi nilai sesuai dengan yang diharapkan
      expect(obatJson.isNotEmpty, true);
      expect(obatJson, contains('"title":"Test Title"'));
      expect(obatJson, contains('"note":"Test Note"'));
      expect(obatJson, contains('"isCompleted":0'));
      expect(obatJson, contains('"date":"2023-11-16"'));
      expect(obatJson, contains('"startTime":"12:00 PM"'));
      expect(obatJson, contains('"endTime":"1:00 PM"'));
      expect(obatJson, contains('"color":0'));
      expect(obatJson, contains('"remind":1'));
      expect(obatJson, contains('"repeat":"daily"'));
      expect(obatJson, contains('"id":null')); // ID harus null saat toJson()
    });

    // Tes 5: Memastikan fungsi fromJson() berfungsi dengan benar
    test('ObatModel fromJson', () {
      // JSON yang akan diubah menjadi ObatModel
      String obatJson =
          '{"title":"Test Title","note":"Test Note","isCompleted":0,"date":"2023-11-16","startTime":"12:00 PM","endTime":"1:00 PM","color":0,"remind":1,"repeat":"daily"}';

      // Membuat ObatModel dari JSON
      ObatModel obatModel = ObatModel.fromJson(obatJson);

      // Verifikasi bahwa ObatModel dibuat dengan benar
      expect(obatModel.title, 'Test Title');
      expect(obatModel.note, 'Test Note');
      expect(obatModel.isCompleted, 0);
      expect(obatModel.date, '2023-11-16');
      expect(obatModel.startTime, '12:00 PM');
      expect(obatModel.endTime, '1:00 PM');
      expect(obatModel.color, 0);
      expect(obatModel.remind, 1);
      expect(obatModel.repeat, 'daily');
      expect(obatModel.id, isNull); // ID harus null saat fromJson()
    });
  });
}
