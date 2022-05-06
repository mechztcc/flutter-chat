import 'package:chat/models/chat_message.dart';
import 'package:chat/models/user_model.dart';
import 'package:chat/services/chat/chat_mock_service.dart';

abstract class ChatService {
  Future<ChatMessage> save(String text, UserModel user);
  Stream<List<ChatMessage>> messagesStream();

  factory ChatService() {
    return ChatMockService();
  }
}
