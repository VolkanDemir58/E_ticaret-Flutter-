
import 'package:untitled/firebase/firebase_consts.dart';

class FirestoreServices{

  static getProduct(image){
    
    return firestore.collection(productCollection).where("image",isEqualTo: image).snapshots();
  }

}