// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/components/Icons/icon_chat_icons.dart';
import 'package:flutter_chat/components/Icons/setting_icon_icons.dart';
import 'package:flutter_chat/models/chat.dart';

// class ChatDetail extends StatefulWidget {
//   final Chat chat_person;

//   const ChatDetail({Key? key, required this.chat_person}) : super(key: key);

//   @override
//   State<ChatDetail> createState() => _ChatDetailState();
// }

// class _ChatDetailState extends State<ChatDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(IconChat.chevron_left, color: Colors.black, size: 28),
//           onPressed: () => Navigator.pop(context),
//         ),
//         actions : <Widget> [
//           Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         FloatingActionButton(
//             onPressed: (){},

//             child: Image.asset(chat_person.image),),
//         const SizedBox(width: 8),
//         Padding(
//           padding: const EdgeInsets.only(top: 5.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const <Widget>[

//               SizedBox(width: 3),
//               Text(
//                 "Dao Duy Thai",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20),
//               )
//             ],
//           ),
//         )
//       ],
//     )
//         ]
//       ),

//     );
//   }
// }
class ChatDetail extends StatelessWidget {
  final Chat chat_person;
  const ChatDetail({Key? key, required this.chat_person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: size.height * 0.1,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.grey.shade300,
            ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // inf person chat
                SizedBox(
                  width: size.width * 0.6,
                  // color: Colors.green,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(IconChat.chevron_left,
                            color: Colors.black, size: 28),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {},
                            child: Image.asset(
                              chat_person.image,
                              scale: 3,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            chat_person.name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // call and call video
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: IconButton(
                        icon: const Icon(IconChat.video,
                            color: Colors.grey, size: 20),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: IconButton(
                        icon: const Icon(Icons.phone,
                            color: Colors.grey, size: 24),
                        onPressed: () {},
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.78,
            color: Colors.red,
          ),
          Container(
              width: double.infinity,
              height: size.height * 0.1 - 10.4,
              // color: Colors.amber,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.blue),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.camera_alt, color: Colors.blue),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      SettingIcon.image,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      IconChat.microphone,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: size.width * 0.4,
                    height: size.height * 0.06,
                    // color: Colors.green,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          suffixIcon:
                              const Icon(Icons.mood_outlined, color: Colors.blue)),
                    ),                    
                  ),
                  IconButton(
                    icon:  const Icon(
                      IconChat.send,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                ],
              ))
        ],
      )),
    );
  }
}
