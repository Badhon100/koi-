import 'package:flutter/material.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:8.0, left: 20, right: 20, bottom: 8),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.white10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text("Badhon Ahmed",
                      style: TextStyle(
                        color: (index %2 == 0)?Colors.teal : Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      height: 20, width: 20,
                      decoration: BoxDecoration(
                        color: (index %2 == 0)?Colors.teal : Colors.redAccent,
                        borderRadius: BorderRadius.circular(15)
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}