import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pet_medical/pet_card.dart';
import 'package:pet_medical/repository/data_repository.dart';

import 'model/pets.dart';

class HomeList extends StatefulWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  final DataRepository repository = DataRepository();

  @override
  Widget build(BuildContext context) {
    print('stmh');
    return Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: repository.getStream(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return LinearProgressIndicator();
              print(snapshot.data?.docs);
              print(11);
              return _buildList(context, snapshot.data?.docs ?? []);
            }),
            );

  }
}
// 1
Widget _buildList(BuildContext context, List<DocumentSnapshot>? snapshot) {
  print(2);
  print(snapshot);
  return ListView(

    padding: const EdgeInsets.only(top: 20.0),
    // 2
    children: snapshot!.map((data) => _buildListItem(context, data)).toList(),
  );
}
// 3
Widget _buildListItem(BuildContext context, DocumentSnapshot snapshot) {
  // 4
  print(4);
  //final pet = Pet.fromSnapshot(snapshot);
  print(3);
  return PetCard(pet:1);
}

