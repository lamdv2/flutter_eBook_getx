import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
   @override
  void onInit() {
    super.onInit();

    for (var i = 0; i < genres.length; i++) {
      for (var j = 1; j <= 3; j++) {
        listBookCategory.add({
          'image': 'avatar.png',
          'title': '${genres[i]} - Book $j',
        });
      }
    }
  }

  final _db = FirebaseFirestore.instance;
  final List<Map<String, String>> listBookCategory = [];

  final List<String> genres = [
    'History',
    'Science',
    'Math',
    'Fiction',
    'Non-fiction',
    'Biography',
    'Mystery',
    'Romance',
    'Fantasy',
    'Thriller',
    'Self-Help',
    'Poetry',
    'Humor',
    'Technology',
    'Art',
    'Cooking',
  ];

 

  Future<void> getCategory() async {
    final snapShot = await _db
        .collection('Categorys')
        // .where('email', isEqualTo: email)
        .get();
  }

  Future<void> getUserDetails(String email) async {
    final snapShot = await _db
        .collection('userModel')
        .where('email', isEqualTo: email)
        .get();

    // if (snapShot.docs.isNotEmpty) {
    //   userModel.value =
    //       snapShot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    // }
  }
}
