import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ward/model/user_model.dart';

class FireStoreUser {
  final CollectionReference _userCollectionRef =
      FirebaseFirestore.instance.collection('App Users');

  Future<void> addUserToFireStore(UserModel userModel) async {
    return await _userCollectionRef
        .doc(userModel.userId)
        .set(userModel.toJson());
  }
}
