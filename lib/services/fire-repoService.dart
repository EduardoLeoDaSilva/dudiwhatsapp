import 'package:cloud_firestore/cloud_firestore.dart';

class FireRepoService {

  Future<DocumentReference<Map<String, dynamic>>> saveData(
      {required String collection,
      String? id,
      required Map<String, dynamic> data}) async {
    return await FirebaseFirestore.instance
        .collection(collection)
        .add(data);
  }

  Future<void> update({required String collection, required String id, required Map<String, dynamic> data}) async {
    return await FirebaseFirestore.instance.collection(collection).doc(id).update(data);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getData({required String collection,required String id}) async {
    return await FirebaseFirestore.instance.collection(collection).doc(id).get();
  }

  void delete() {
    throw Exception();
  }
}
