import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:store/data/models/user.dart';

class FirestoreService {
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> createUser(User user) async {
    try {
      await usersCollection.doc(user.email).set(user.toMap());
    } catch (e) {
      throw Exception("Failed to add user: $e");
    }
  }
}
