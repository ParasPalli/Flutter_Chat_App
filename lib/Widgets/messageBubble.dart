import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class messageBubble extends StatelessWidget {
  const messageBubble({super.key, this.data, this.itsMe});
  final data;
  final itsMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            itsMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            data['sender'],
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black45,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Material(
            color: itsMe ? Colors.lightBlueAccent : Colors.white,
            elevation: 3,
            borderRadius: itsMe ? leftMessage : rightMessage,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              child: Text(
                data['txt'],
                style: TextStyle(
                  fontSize: 15,
                  color: itsMe ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
