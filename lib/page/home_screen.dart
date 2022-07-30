import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:raihan_dicoding/component/card.dart';
import 'package:raihan_dicoding/model/rangkumanku.dart';
import 'package:raihan_dicoding/page/detail_card.dart';
import 'package:raihan_dicoding/page/help.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> isPenting = [];

  Color _colorLevel(String level) {
    if (level == 'basic') {
      return Colors.lightGreen;
    } else if (level == 'medium') {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: screen.height / 4,
                color: Colors.grey[400],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final RangkumankuModel model =
                          rangkumankuModelList[index];
                      return MyCard(
                        title: model.title,
                        note: model.note,
                        level: model.level,
                        onTapInk: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailCard(
                                model: model,
                                color: _colorLevel(model.level),
                                level: model.level,
                              ),
                            ),
                          );
                        },
                        onPressedBadge: () {
                          setState(() {
                            isPenting.contains(model.title)
                                ? isPenting.remove(model.title)
                                : isPenting.add(model.title);
                          });
                        },
                        icon: isPenting.contains(model.title)
                            ? const Icon(Icons.check_circle)
                            : const Icon(Icons.circle_outlined),
                      );
                    },
                    itemCount: rangkumankuModelList.length,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, screen.height / 12, 20, 0),
            child: Container(
              height: screen.height / 5,
              width: screen.width / 1,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Rangkumanku',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(5, 5),
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const Help(),
                                ),
                              );
                            },
                            color: Colors.white,
                            padding: const EdgeInsets.only(right: 15),
                            icon: const Icon(
                              Icons.help,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Badge(
                        badgeColor: Colors.green,
                        badgeContent: Text(
                          isPenting.length.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        child: const Text(
                          'Dibaca    ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
