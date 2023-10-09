import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(children: [
          Card(
            child: Column(children: [
              SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHe7Y5p9cWuzl_TLRaCAMylpACau5tlBn7Cw&usqp=CAU")),
              Text("Harry Maguire")
            ]),
          ),
        ]),
      ],
    );
  }
}
