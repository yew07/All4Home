import 'package:all4home/models/conversation%20_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:all4home/models/conversation_chat_list.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "HomeSweep Solutions",
        messageText: "Thank you for using our service !",
        imageURL:
            "https://c8.alamy.com/comp/2PR3XND/house-repair-vector-logo-design-template-home-restoration-and-renovation-service-logo-design-2PR3XND.jpg",
        time: "Now"),
    ChatUsers(
        name: "NestCare Services",
        messageText: "We'll do better next time.",
        imageURL:
            "https://marketplace.canva.com/EAFMNm9ybqQ/1/0/1600w/canva-gold-luxury-initial-circle-logo-qRQJCijq_Jw.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "HandyHome Helpers",
        messageText: "How may I help you, sir?",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnAXOAPTZUhFPvyVxQ3MwRYNtBk1_mL19At7rtOptZjo45gUvgMk6fRwB-QtaR19FiAWw&usqp=CAU",
        time: "31 Mar"),
    ChatUsers(
        name: "RentMe Co.",
        messageText: "Product is on the way sir!",
        imageURL:
            "https://static.vecteezy.com/system/resources/previews/019/604/172/original/elegant-gold-letter-k-with-crown-logo-design-inspiration-vector.jpg",
        time: "28 Mar"),
    ChatUsers(
        name: "SmartPro",
        messageText: "We'll be arriving soon sir.",
        imageURL:
            "https://adstudioshahalam.com/wp-content/uploads/2021/06/corporate-photo-fotografi-photography-photographer-business-headshot-studio-gambar-korporat-syarikat-profile-18-600x900.jpg",
        time: "23 Mar"),
    ChatUsers(
        name: "PrimeReside Care",
        messageText: "Glad to be of help.",
        imageURL:
            "https://university.help.edu.my/wp-content/uploads/2019/08/profile-andrewfoo-alevels.jpg",
        time: "17 Mar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      backgroundColor: Color.fromRGBO(199, 212, 197, 1),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Messages",
                      style: GoogleFonts.outfit(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromRGBO(224, 212, 205, 1),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.notifications,
                            color: Colors.green,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
