import 'package:cat_api_bloc/data/models/cat_model/cat_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteRepo {

  Stream<List<CatImage>> readFavorite(String user) => FirebaseFirestore.instance
      .collection(user)
      .snapshots()
      .map((event) => event.docs.map((doc) => CatImage.fromJson(doc.data())).toList());

  Future addFavorite({
    required String user,
    required String id,
    required url,
    required bool isLike}) async {

    final docFavorite = FirebaseFirestore.instance.collection(user).doc(id);

    final favorite = CatImage(
        id: id,
        url: url,
        isLike: true
    );
    final json = favorite.toJson();
    await docFavorite.set(json);
  }

  Future removeFavorite({required String user, required String id}) async {
    final docFavorite = FirebaseFirestore.instance.collection(user).doc(id);

    await docFavorite.delete();
  }
}