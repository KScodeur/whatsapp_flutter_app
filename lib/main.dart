import 'package:flutter/material.dart';
// import 'packages:google_fonts/google_fonts.dart';

const dGreen = Color(0xFF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "whatsapp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.menu, size: 30)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded, size: 30)),
        ],
      ),
      body: Column(children: [
        MenuSection(),
        FavoriteSection(),
        Expanded(
          child: MessageSection(),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: dGreen,
        child: const Icon(Icons.edit, size: 20),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = ["Messages", "Online", "Groups", "Calls"];
  MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      height: 60,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: const TextStyle(color: Colors.white60, fontSize: 20),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class FavoriteSection extends StatelessWidget {
  FavoriteSection({super.key});
  final List favoriteContacts = [
    {'name': "Alla", 'profil': "images/1.png"},
    {'name': "kil", 'profil': "images/2.jpg"},
    {'name': "mijou", 'profil': "images/3.jpg"},
    {'name': "Bato", 'profil': "images/4.jpg"},
    {'name': "Cyrille", 'profil': "images/5.png"},
    {'name': "Gato", 'profil': "images/6.png"},
    {'name': "Josué", 'profil': "images/7.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      // padding: const EdgeInsets.only(10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: const BoxDecoration(
            color: dGreen,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), 
                topRight: Radius.circular(30))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: const Text(
                    "Favorite contacts",
                    style: TextStyle(
                        color: dWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 20,
                    ))
              ],
            ),
            // ListTile()
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: favoriteContacts.map((favorite) {
                return Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: dWhite, shape: BoxShape.circle),
                        child: CircleAvatar(
                          // radius: 20,
                          backgroundImage: AssetImage(favorite['profil']),
                        ),
                      ),
                      Text(
                        favorite['name'],
                        style: const TextStyle(color: dWhite),
                      )
                    ],
                  ),
                );
              }).toList()),
            )
          ],
        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {
  MessageSection({super.key});

  final List messages = [
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello, comment vas tu?',
      'unRead': 0,
      'date': '07:35'
    },
    {
      'senderProfil': 'images/4.jpg',
      'senderName': 'Lara',
      'message': 'Viendras-tu me visiter ',
      'unRead': 2,
      'date': '16:04'
    },
    {
      'senderProfil': 'images/1.png',
      'senderName': 'Lara',
      'message': 'OK d\'accord',
      'unRead': 5,
      'date': '12:25'
    },
    {
      'senderProfil': 'images/6.png',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/7.png',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfil': 'images/2.jpg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message) {
          return InkWell(
              onTap: () {},
              splashColor: dGreen,
              child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 10, top: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(message['senderProfil']))),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    message['senderName'],
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Wrap(children: [
                                    Text(
                                      message['message'],
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ]),
                                ],
                              ),
                              Column(
                                children: [Text(message["date"]),
                                message['unRead']!=0 
                                ? Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(color: dGreen,
                                  shape: BoxShape.circle),
                                  child: Text(message['unRead'].toString(), 
                                  style: const TextStyle(
                                    color: dWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                                    ))
                                  : const Text('')
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Container(color: Colors.grey[400],height: 0.5,)
                        ],
                      ))
                      // Text(message['message']),
                    ],
                  )));
        }).toList(),
      ),
    );
  }
}
