class Message {
  late String id;
  late String fromUser;
  late String toUser;

  Message();

  Message.fromJson(Map map) {
    id = map['id'];
    fromUser = map['fromUser'];
    toUser = map['toUser'];
  }

  Map toJson() {
    return {'id': id, 'fromUser': fromUser, 'toUser': toUser};
  }
}
