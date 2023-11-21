// Import paket yang diperlukan
import 'package:flutter_test/flutter_test.dart';
import 'package:medcare/model/rumahsakit_model.dart';

// Fungsi utama untuk menjalankan unit test
void main() {
  // Kelompok tes untuk RumahSakitModel
  group('RumahSakitModel Tests', () {
    // Tes 1: Memastikan inisialisasi RumahSakitModel berfungsi dengan benar
    test('RumahSakitModel Initialization', () {
      // Membuat instance RumahSakitModel dengan nilai tertentu
      RumahSakitModel rumahSakitModel = RumahSakitModel(
        poli: 'Poli Umum',
        title: 'Rumah Sakit Sehat Sentosa',
        note: 'Unit Pelayanan Terpadu',
        isCompleted: 0,
        date: '2023-11-16',
        startTime: '8:00 AM',
        endTime: '5:00 PM',
        color: 0,
        remind: 1,
        repeat: 'daily',
      );

      // Verifikasi bahwa RumahSakitModel dibuat dengan benar
      expect(rumahSakitModel.poli, 'Poli Umum'); // Memastikan nilai poli sesuai
      expect(rumahSakitModel.title,
          'Rumah Sakit Sehat Sentosa'); // Memastikan nilai title sesuai
      expect(rumahSakitModel.note,
          'Unit Pelayanan Terpadu'); // Memastikan nilai note sesuai
      expect(rumahSakitModel.isCompleted,
          0); // Memastikan nilai isCompleted sesuai
      expect(
          rumahSakitModel.date, '2023-11-16'); // Memastikan nilai date sesuai
      expect(rumahSakitModel.startTime,
          '8:00 AM'); // Memastikan nilai startTime sesuai
      expect(rumahSakitModel.endTime,
          '5:00 PM'); // Memastikan nilai endTime sesuai
      expect(rumahSakitModel.color, 0); // Memastikan nilai color sesuai
      expect(rumahSakitModel.remind, 1); // Memastikan nilai remind sesuai
      expect(rumahSakitModel.repeat, 'daily'); // Memastikan nilai repeat sesuai
      expect(rumahSakitModel.id,
          isNull); // Memastikan ID harus null saat inisialisasi
    });

    // Tes 2: Memastikan fungsi toMap() berfungsi dengan benar
    test('RumahSakitModel toMap', () {
      // Membuat instance RumahSakitModel dengan nilai tertentu
      RumahSakitModel rumahSakitModel = RumahSakitModel(
        poli: 'Poli Anak',
        title: 'RS Sejahtera Medika',
        note: 'Pelayanan Kesehatan Anak',
        isCompleted: 0,
        date: '2023-11-16',
        startTime: '9:00 AM',
        endTime: '6:00 PM',
        color: 0,
        remind: 1,
        repeat: 'daily',
      );

      // Mengonversi RumahSakitModel menjadi map
      Map<String, dynamic> rumahSakitMap = rumahSakitModel.toMap();

      // Verifikasi bahwa map berisi nilai sesuai dengan yang diharapkan
      expect(rumahSakitMap['poli'], 'Poli Anak');
      expect(rumahSakitMap['title'], 'RS Sejahtera Medika');
      expect(rumahSakitMap['note'], 'Pelayanan Kesehatan Anak');
      expect(rumahSakitMap['isCompleted'], 0);
      expect(rumahSakitMap['date'], '2023-11-16');
      expect(rumahSakitMap['startTime'], '9:00 AM');
      expect(rumahSakitMap['endTime'], '6:00 PM');
      expect(rumahSakitMap['color'], 0);
      expect(rumahSakitMap['remind'], 1);
      expect(rumahSakitMap['repeat'], 'daily');
      expect(rumahSakitMap['id'], isNull); // ID harus null saat toMap()
    });

    // Tes 3: Memastikan fungsi fromMap() berfungsi dengan benar
    test('RumahSakitModel fromMap', () {
      // Contoh data map yang akan diubah menjadi RumahSakitModel
      Map<String, dynamic> rumahSakitMap = {
        'poli': 'Poli Gigi',
        'title': 'DentCare Hospital',
        'note': 'Pelayanan Kesehatan Gigi',
        'isCompleted': 0,
        'date': '2023-11-16',
        'startTime': '10:00 AM',
        'endTime': '7:00 PM',
        'color': 0,
        'remind': 1,
        'repeat': 'daily',
      };

      // Membuat RumahSakitModel dari map
      RumahSakitModel rumahSakitModel = RumahSakitModel.fromMap(rumahSakitMap);

      // Verifikasi bahwa RumahSakitModel dibuat dengan benar
      expect(rumahSakitModel.poli, 'Poli Gigi');
      expect(rumahSakitModel.title, 'DentCare Hospital');
      expect(rumahSakitModel.note, 'Pelayanan Kesehatan Gigi');
      expect(rumahSakitModel.isCompleted, 0);
      expect(rumahSakitModel.date, '2023-11-16');
      expect(rumahSakitModel.startTime, '10:00 AM');
      expect(rumahSakitModel.endTime, '7:00 PM');
      expect(rumahSakitModel.color, 0);
      expect(rumahSakitModel.remind, 1);
      expect(rumahSakitModel.repeat, 'daily');
      expect(rumahSakitModel.id, isNull); // ID harus null saat fromMap()
    });

    // Tes 4: Memastikan fungsi toJson() berfungsi dengan benar
    test('RumahSakitModel toJson', () {
      // Membuat instance RumahSakitModel dengan nilai tertentu
      RumahSakitModel rumahSakitModel = RumahSakitModel(
        poli: 'Poli Mata',
        title: 'EyeHealth Clinic',
        note: 'Pelayanan Kesehatan Mata',
        isCompleted: 0,
        date: '2023-11-16',
        startTime: '11:00 AM',
        endTime: '8:00 PM',
        color: 0,
        remind: 1,
        repeat: 'daily',
      );

      // Mengonversi RumahSakitModel menjadi JSON
      String rumahSakitJson = rumahSakitModel.toJson();

      // Verifikasi bahwa JSON tidak kosong dan berisi nilai sesuai dengan yang diharapkan
      expect(rumahSakitJson.isNotEmpty, true);
      expect(rumahSakitJson, contains('"poli":"Poli Mata"'));
      expect(rumahSakitJson, contains('"title":"EyeHealth Clinic"'));
      expect(rumahSakitJson, contains('"note":"Pelayanan Kesehatan Mata"'));
      expect(rumahSakitJson, contains('"isCompleted":0'));
      expect(rumahSakitJson, contains('"date":"2023-11-16"'));
      expect(rumahSakitJson, contains('"startTime":"11:00 AM"'));
      expect(rumahSakitJson, contains('"endTime":"8:00 PM"'));
      expect(rumahSakitJson, contains('"color":0'));
      expect(rumahSakitJson, contains('"remind":1'));
      expect(rumahSakitJson, contains('"repeat":"daily"'));
      expect(
          rumahSakitJson, contains('"id":null')); // ID harus null saat toJson()
    });

    // Tes 5: Memastikan fungsi fromJson() berfungsi dengan benar
    test('RumahSakitModel fromJson', () {
      // JSON yang akan diubah menjadi RumahSakitModel
      String rumahSakitJson =
          '{"poli":"Poli Penyakit Dalam","title":"InternalCare Hospital","note":"Pelayanan Kesehatan Penyakit Dalam","isCompleted":0,"date":"2023-11-16","startTime":"12:00 PM","endTime":"9:00 PM","color":0,"remind":1,"repeat":"daily"}';

      // Membuat RumahSakitModel dari JSON
      RumahSakitModel rumahSakitModel =
          RumahSakitModel.fromJson(rumahSakitJson);

      // Verifikasi bahwa RumahSakitModel dibuat dengan benar
      expect(rumahSakitModel.poli, 'Poli Penyakit Dalam');
      expect(rumahSakitModel.title, 'InternalCare Hospital');
      expect(rumahSakitModel.note, 'Pelayanan Kesehatan Penyakit Dalam');
      expect(rumahSakitModel.isCompleted, 0);
      expect(rumahSakitModel.date, '2023-11-16');
      expect(rumahSakitModel.startTime, '12:00 PM');
      expect(rumahSakitModel.endTime, '9:00 PM');
      expect(rumahSakitModel.color, 0);
      expect(rumahSakitModel.remind, 1);
      expect(rumahSakitModel.repeat, 'daily');
      expect(rumahSakitModel.id, isNull); // ID harus null saat fromJson()
    });
  });
}
