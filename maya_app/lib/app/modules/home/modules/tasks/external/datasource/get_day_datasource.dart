import 'package:cloud_firestore/cloud_firestore.dart';

class DayDatasouce {
  final FirebaseFirestore db;

  const DayDatasouce(this.db);

  Future findDay(String nameDay) async {
    //Atualiza quando pedido
    try {
      var result = await db.collection('day').doc(nameDay).get();
      return result.data()!;
    } on FirebaseException catch (e) {
      throw e;
    } catch (e) {
      throw e;
    }

    //Atualiza automatico
    //_db.collection('cardsday').snapshots().listen((event) {});
  }

  Future updateDay(String dayName, Map<String, dynamic> day) async {
    //Atualiza quando pedido
    try {
      await db.collection('day').doc(dayName).set(day);
    } on FirebaseException catch (e) {
      throw e;
    } catch (e) {
      throw e;
    }

    //Atualiza automatico
    //_db.collection('cardsday').snapshots().listen((event) {});
  }
}
