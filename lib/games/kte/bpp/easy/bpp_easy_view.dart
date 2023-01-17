import 'package:flutter/material.dart';
import 'package:quiz_app/models/item_model.dart';

class BppEasyView extends StatefulWidget {
  const BppEasyView({Key? key}) : super(key: key);

  @override
  State<BppEasyView> createState() => _BppEasyViewState();
}

class _BppEasyViewState extends State<BppEasyView> {
  late List<ItemModel> items;
  late List<ItemModel> items2;
  late int score;
  late bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(
          name: 'Flour Sifter',
          img: 'lib/assets/icons/flour_sifter.jpg',
          value: 'Flour Sifter'),
      ItemModel(
          name: 'Jelly Roll Pan',
          img: 'lib/assets/icons/jelly_roll_pan.jpg',
          value: 'Jelly Roll Pan'),
      ItemModel(
          name: 'Loaf Pan',
          img: 'lib/assets/icons/loaf_pan.jpg',
          value: 'Loaf Pan'),
      ItemModel(
          name: 'Pastry Blender',
          img: 'lib/assets/icons/pastry_blender.jpg',
          value: 'Pastry Blender'),
      ItemModel(
          name: 'Rolling Pin',
          img: 'lib/assets/icons/rolling_pin.jpg',
          value: 'Rolling Pin'),
      ItemModel(
          name: 'Muffin Pan',
          img: 'lib/assets/icons/muffin_pan.jpg',
          value: 'Muffin Pan'),
      ItemModel(
          name: 'Pop Over Pan',
          img: 'lib/assets/icons/pop_over_pan.jpg',
          value: 'Pop Over Pan'),
      ItemModel(
          name: 'Pastry Tip',
          img: 'lib/assets/icons/pastry_tip.jpg',
          value: 'Pastry Tip'),
    ];
    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) gameOver = true;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Color(0xffE7A1FF),
                  ),
                  child: Column(
                      children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 10),
        child: Center(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: 'Score: ',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            TextSpan(
                  text: '$score',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(color: Colors.teal))
          ])),
        ),
      ),
      if (!gameOver)
        Row(
          children: <Widget>[
            const Spacer(),
            Column(
                  children: items.map((item) {
              return Container(
                    margin: const EdgeInsets.all(8),
                    child: Draggable<ItemModel>(
                        data: item,
                        childWhenDragging: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(item.img),
                          radius: 50,
                        ),
                        feedback: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(item.img),
                          radius: 30,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(item.img),
                          radius: 30,
                        )));
            }).toList()),
            const Spacer(flex: 2),
            Column(
                  children: items2.map((item) {
              return DragTarget<ItemModel>(
                  onAccept: (receivedItem) {
                    if (item.value == receivedItem.value) {
                      setState(() {
                        items.remove(receivedItem);
                        items2.remove(item);
                        score += 10;
                        item.accepting = false;
                      });
                      // score+=10;
                      // item.accepting =false;

                    } else {
                      setState(() {
                        score -= 5;
                        item.accepting = false;
                      });
                    }
                  },
                  onLeave: (receivedItem) {
                    setState(() {
                      item.accepting = false;
                    });
                  },
                  onWillAccept: (receivedItem) {
                    setState(() {
                      item.accepting = true;
                    });
                    return true;
                  },
                  builder: (context, acceptedItems, rejectedItem) => Container(
                    color: item.accepting ? Colors.red : Colors.teal,
                    height: 50,
                    width: 150,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(8.0),
                    child: Text(
                      item.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  ),
              );
            }).toList()),
          ],
        ),
      if (gameOver)
        const Text(
          "",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
      if (gameOver)
        Center(
          child: RaisedButton(
            textColor: Colors.white,
            color: Colors.pink,
            child: const Text("New Game"),
            onPressed: () {
              initGame();
              setState(() {});
            },
          ),
        )
    ]),
                ))));
  }
}
