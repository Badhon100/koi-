

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool position = false;
  @override
  Widget build(BuildContext context) {
     
    return SafeArea(
      child: Scaffold(
        body:   Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Nahiduzzaman Badhon", 
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (position == true)? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.settings_power_rounded, 
                      size: 80,
                      color: Colors.white,
                      ),
                    onPressed: (){
                      setState(() {
                        position = !position;
                        print(position);
                      });
                      
                    },
                    ),
                )
            ],
          ),
        )),
    );
  }
}