class ChatScreenModel {
  final String messageId;
  final String message;
  final String messageTime;
  final bool isSentMessage;
  final bool isDelivered;
  final bool isRead;

  ChatScreenModel({
    this.messageId,
    this.message,
    this.messageTime,
    this.isSentMessage,
    this.isDelivered,
    this.isRead,
  });
}

List<ChatScreenModel> messages = [
  ChatScreenModel(
    messageId: '1',
    message:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    messageTime: '6:55 am',
    isSentMessage: true,
    isDelivered: true,
    isRead: true,
  ),
  ChatScreenModel(
    messageId: '2',
    message:
        'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
    messageTime: '6:55 am',
    isSentMessage: false,
    isDelivered: true,
    isRead: true,
  ),
  ChatScreenModel(
    messageId: '3',
    message:
        'Contrary to popular belief, Lorem Ipsum is not simply random text',
    messageTime: '6:55 am',
    isSentMessage: true,
    isDelivered: true,
    isRead: true,
  ),
  ChatScreenModel(
    messageId: '4',
    message:
        'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.',
    messageTime: '6:55 am',
    isSentMessage: false,
    isDelivered: true,
    isRead: true,
  ),
  ChatScreenModel(
    messageId: '5',
    message:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
    messageTime: '6:55 am',
    isSentMessage: true,
    isDelivered: true,
    isRead: true,
  ),
  ChatScreenModel(
    messageId: '6',
    message: 'There are many variations of passages of Lorem Ipsum available',
    messageTime: '6:55 am',
    isSentMessage: false,
    isDelivered: true,
    isRead: true,
  ),
];
