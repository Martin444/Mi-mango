import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';

class CurriculumServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<QuerySnapshot<Map<String, dynamic>>> getAllCurriculum() async {
    try {
      var response = await _db.collection('curriculums').get();
      response.docs.forEach((element) {
        printInfo(info: element.data().toString());
      });
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future postNewCurriculumn(Map<String, dynamic> data) async {
    try {
      var response = await _db.collection('curriculums').add(data);

      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
