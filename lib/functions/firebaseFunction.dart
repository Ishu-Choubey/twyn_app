import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

String docid='';
class FirestoreServices {
  static saveUser(String name, email, phoneno, uid) async {
    docid=uid;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set({'email': email, 'name': name, 'phone number': phoneno, 'uid': uid});
  }
  static currentuserid() async
  {
    var user = FirebaseAuth.instance.currentUser;
    docid=user!.uid;
    // QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('users').doc('${docid}').collection("orders").get();
    // for (int i = 0; i < querySnapshot.docs.length; i++) {
    //   var a = querySnapshot.docs[i];
    //   print(a.id);
  }
}