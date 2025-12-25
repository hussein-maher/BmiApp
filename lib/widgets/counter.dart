import 'package:flutter/material.dart';

class CounterCountainer extends StatelessWidget {

  final String title;
  final int value;
  final void Function()? increament;
  final void Function()? decreament;

  const CounterCountainer({super.key, required this.title, required this.value, this.increament, this.decreament});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xff333244),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300
            ),),
            Text(value.toString(),style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.small(onPressed:decreament,
                  key: UniqueKey(),
                  heroTag: "$title 2",
                  backgroundColor: Color(0xff8B8C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton.small(onPressed: increament,
                  key: UniqueKey(),
                  heroTag: "$title 1",
                  backgroundColor: Color(0xff8B8C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
