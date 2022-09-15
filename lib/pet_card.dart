import 'package:flutter/material.dart';
import 'package:pet_medical/model/pets.dart';

class PetCard extends StatefulWidget {
  final int pet;
  PetCard({Key? key, required  this.pet}) : super(key: key);

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.pet.toString()),
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    );
  }
}
