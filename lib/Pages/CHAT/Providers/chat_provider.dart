import 'package:flutter/material.dart';
import 'package:login/Domain/CHAT/Entidades/message.dart';
import 'package:login/Pages/CHAT/Config/Helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messages = [
    Message(text: "Hola", fromWho: FromWho.me),
    Message(text: "Que Haces?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessae = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessae);
    if (text.endsWith('?')) {
      herReply();
    }
    notifyListeners();
    moveScrolltoBottom();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messages.add(herMessage);
    notifyListeners();
    moveScrolltoBottom();
  }

  void moveScrolltoBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
