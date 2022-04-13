// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/models/chat.dart';
import 'package:flutter_chat/screens/chat_detail/chat_detail.dart';

class BuildChats extends StatelessWidget {
  final int index;
  final Size size;
  const BuildChats({Key? key, required this.index, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: size.width * 0.9,
      height: size.height * 0.13,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: const Color(0XFFd9d9d9),
          )),
      child: MaterialButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        minWidth: double.infinity,
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatDetail(
                chat_person: chatsData[index],
              ),
            )),
        child: Row(
          children: [
            Image.asset(chatsData[index].image, scale: 3.8),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: size.width * 0.4 + 10,
                  child: Text(
                    chatsData[index].name,
                    style: TextStyle(
                        color: chatsData[index].isReaded
                            ? Colors.grey
                            : Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: size.width * 0.4 + 10,
                  height: 20,
                  child: Row(
                    children: [
                      Image.asset(chatsData[index].image, scale: 6),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          chatsData[index].lastMessage,
                          style: TextStyle(
                              color: chatsData[index].isReaded
                                  ? Colors.grey[400]
                                  : Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.circle,
                    size: 16,
                    color:
                        chatsData[index].isActive ? Colors.green : Colors.grey),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 12),
                  child: Text(
                    chatsData[index].time,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


