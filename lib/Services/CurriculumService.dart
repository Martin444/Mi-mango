import 'package:cloud_firestore/cloud_firestore.dart';

class CurriculumServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future postNewCurriculumn(Map<String, dynamic> data) async {
    try {
      var response = await _db.collection('curriculums').add(data);

      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
