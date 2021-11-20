import 'package:cloud_firestore/cloud_firestore.dart';

class JobService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
      getListAvilableJobs() async {
    try {
      var response = await _db.collection('jobstype').get();
      return response.docs;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
