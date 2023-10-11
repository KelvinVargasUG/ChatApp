import 'package:flutter/material.dart';
import 'package:login/Domain/CHAT/Entidades/message.dart';
import 'package:login/Pages/CHAT/Providers/chat_provider.dart';
import 'package:login/Pages/CHAT/Widgets/her_message_bubble.dart';
import 'package:login/Pages/CHAT/Widgets/message_field_box.dart';
import 'package:login/Pages/CHAT/Widgets/my_message_bubble.dart';
import 'package:provider/provider.dart';

class Chat extends StatelessWidget {
  final String title;
  const Chat({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
          ),
        ),
        //centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              controller: chatProvider.scrollController,
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messages[index];
                return (message.fromWho == FromWho.me)
                    ? MyMessageBubble(message: message.text)
                    : HerMessageBubble(
                        message: message.text,
                        imageUrl: message.imageUrl.toString());
                // return (index % 2 == 0)
                //     ? const HerMessageBubble()
                //     : const MyMessageBubble();
              },
            )),
            MessageFieldBox(
              // onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            )
          ],
        ),
      ),
    );
  }
}
