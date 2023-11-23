import 'package:cloud_firestore/cloud_firestore.dart';

// Firebase Firestore'a bir ürün ekleme örneği
void addProduct() {
  FirebaseFirestore.instance.collection('products').add({
    'name': 'Xiaomi Redmi Mi 9',
    'price': 933.07,
    'image': 'redmi.jpg',
  });
}

// Firebase Firestore'dan ürünleri alma örneği
Stream<QuerySnapshot> getProducts() {
  return FirebaseFirestore.instance.collection('products').snapshots();
}

// Firebase Firestore'da bir ürünü güncelleme örneği
void updateProduct(String productId, String name) {
  FirebaseFirestore.instance.collection('products').doc(productId).update({
    'name': name,
  });
}

// Firebase Firestore'dan bir ürünü silme örneği
void deleteProduct(String productId) {
  FirebaseFirestore.instance.collection('products').doc(productId).delete();
}