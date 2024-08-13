import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyStory());
}

class MyStory extends StatelessWidget {
  const MyStory({super.key});

  @override
  Widget build(BuildContext context) {
    List myDatalist = [
      {
        "name": "qwerty",
        "dp":
            "https://images.pexels.com/photos/20659792/pexels-photo-20659792/free-photo-of-portrait-of-geese.jpeg",
        "bg":
            "https://images.pexels.com/photos/18138617/pexels-photo-18138617/free-photo-of-portrait-of-white-goose.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "asdfgh",
        "dp":
            "https://images.pexels.com/photos/12345678/pexels-photo-12345678.jpeg",
        "bg":
            "https://images.pexels.com/photos/1366909/pexels-photo-1366909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "zxcvbn",
        "dp":
            "https://images.pexels.com/photos/11190094/pexels-photo-11190094.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "poiuyt",
        "dp":
            "https://images.pexels.com/photos/12739875/pexels-photo-12739875.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/13102285/pexels-photo-13102285.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "lkjhgf",
        "dp":
            "https://images.pexels.com/photos/25677015/pexels-photo-25677015/free-photo-of-woman-in-red-hat-carrying-basket.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg":
            "https://images.pexels.com/photos/10987654/pexels-photo-10987654.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      }
    ];

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: PageView.builder(
                itemCount: myDatalist.length,
                itemBuilder: (context, index) => Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(myDatalist[index]["bg"]))),
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.grey,
                            thickness: 3,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    NetworkImage(myDatalist[index]["dp"])),
                            title: Text(
                              myDatalist[index]["name"],
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              "warriorofthenation",
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.white, width: 1.5)),
                                  child: Text(
                                    "Sent message",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                                size: 34,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.send,
                                color: Colors.white,
                                size: 34,
                              ),
                            ],
                          )
                        ],
                      ),
                    ))),
      ),
    );
  }
}
