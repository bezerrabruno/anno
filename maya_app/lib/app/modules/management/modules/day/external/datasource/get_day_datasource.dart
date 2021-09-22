import 'package:cloud_firestore/cloud_firestore.dart';

class DayDatasouce {
  final FirebaseFirestore db;

  const DayDatasouce(this.db);

  Future findDay(String idName) async {
    //Atualiza quando pedido
    try {
      var result = await db.collection('days').doc(idName).get();

      if (result.data() != null) {
        return result.data()!;
      } else {
        await db.collection('days').doc(idName).set({'tasks': []});

        result = await db.collection('days').doc(idName).get();
        return result.data()!;
      }
    } on FirebaseException catch (e) {
      //print(e.code);
      throw e.message!;
    } catch (e) {
      //print(e);
      rethrow;
    }

    //Atualiza automatico
    //_db.collection('cardsday').snapshots().listen((event) {});
  }

  Future updateDay(String idName, Map<String, dynamic> day) async {
    try {
      await db.collection('days').doc(idName).update(day);
    } on FirebaseException catch (e) {
      //print(e);
      throw e.message!;
    } catch (e) {
      //print(e);
      rethrow;
    }
  }
}
