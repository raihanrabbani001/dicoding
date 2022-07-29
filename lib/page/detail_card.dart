import 'package:flutter/material.dart';
import 'package:raihan_dicoding/model/card_model.dart';
import 'package:badges/badges.dart';

class DetailCard extends StatelessWidget {
  final CardModel model;
  final Color color;
  final String level;
  const DetailCard(
      {Key? key, required this.model, required this.color, required this.level})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screen.width / 1,
              height: screen.height / 4,
              color: Colors.grey[600],
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(12, 12),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_circle_left,
                        color: Colors.grey[100],
                        size: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 15, 0, 0),
                    child: Badge(
                      badgeColor: color,
                      position: BadgePosition.bottomStart(bottom: 40, start: 2),
                      shape: BadgeShape.square,
                      borderRadius: BorderRadius.circular(10),
                      badgeContent: Text(
                        model.level,
                        style: const TextStyle(color: Colors.white),
                      ),
                      child: Text(
                        model.title,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: screen.height / 1,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    model.note,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
