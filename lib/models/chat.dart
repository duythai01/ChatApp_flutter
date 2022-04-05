class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;
  final bool isReaded;

  Chat({
    this.isReaded = true,
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Jenny Wilson",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user1.png",
    time: "3m ago",
    isActive: false,
    isReaded: false,
  ),
  Chat(
    name: "Esther Howard",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true,
    isReaded: false,
  ),
  Chat(
    name: "Ralph Edwards",
    lastMessage: "Do you have update...",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
    isReaded: true,
  ),
  Chat(
    name: "Jacob Jones",
    lastMessage: "You’re welcome :)",
    image: "assets/images/user_2.png",
    time: "5d ago",
    isActive: true,
    isReaded: true,
  ),
  Chat(
    name: "Albert Flores",
    lastMessage: "Thanks",
    image: "assets/images/user_3.png",
    time: "6d ago",
    isActive: false,
    isReaded: false,
  ),
  Chat(
    name: "Jenny Wilson",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user1.png",
    time: "3m ago",
    isActive: false,
    isReaded: true,
  ),
  Chat(
    name: "Esther Howard",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true,
    isReaded: false,
  ),
  Chat(
    name: "Ralph Edwards",
    lastMessage: "Do you have update...",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
    isReaded: true,
  ),
];
