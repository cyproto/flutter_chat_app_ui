class HomeScreenModel {
  static final statusImages = [
    'https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png',
    'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043233-anime-away-face-no-nobody-spirited_113254.png',
    'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043232-avatar-batman-comics-hero_113278.png',
    'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043250-avatar-child-girl-kid_113270.png',
    'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043254-avatar-elderly-grandma-nanny_113280.png',
    'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043251-avatar-female-girl-woman_113291.png',
    'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043260-avatar-male-man-portrait_113269.png',
    'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043241-builder-helmet-worker_113249.png',
    'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043274-avatar-einstein-professor-scientist_113259.png',
  ];
}

class HomeScreenChatModel {
  final String name;
  final String message;
  final String profileImageUrl;
  final String chatTime;
  final int unreadMessageCount;

  HomeScreenChatModel({
    this.name,
    this.message,
    this.profileImageUrl,
    this.chatTime,
    this.unreadMessageCount,
  });
}

List<HomeScreenChatModel> homeScreenChats = [
  HomeScreenChatModel(
    name: 'Shane Haq',
    message: 'Hi there! Are you available?',
    profileImageUrl:
        'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043238-avatar-boy-kid-person_113284.png',
    chatTime: '12:00 am',
    unreadMessageCount: 2,
  ),
  HomeScreenChatModel(
    name: 'Maria Bail',
    message: 'Can\'t talk now.',
    profileImageUrl:
        'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043272-avatar-lazybones-sloth-sluggard_113274.png',
    chatTime: '10:32 pm',
    unreadMessageCount: 1,
  ),
  HomeScreenChatModel(
    name: 'Gualtiero Cea',
    message: 'Hey! What\'s up?',
    profileImageUrl:
        'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043255-beard-hipster-male-man_113243.png',
    chatTime: '09:56 pm',
    unreadMessageCount: 4,
  ),
  HomeScreenChatModel(
    name: 'Maria Zarco',
    message: 'Is this my expresso machine?',
    profileImageUrl:
        'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043252-child-girl-kid-person_113255.png',
    chatTime: '09:38 pm',
    unreadMessageCount: 0,
  ),
  HomeScreenChatModel(
    name: 'Rosita Marcos',
    message: 'I gave it a cold?',
    profileImageUrl:
        'https://cdn.icon-icons.com/icons2/1736/PNG/128/4043240-avatar-bad-breaking-chemisrty-heisenberg_113279.png',
    chatTime: '09:05 pm',
    unreadMessageCount: 9,
  ),
];

// <img src=""/>
// <img src=""/>
// <img src=""/>
// <img src=""/>
// <img src="https://cdn.icon-icons.com/icons2/1736/PNG/128/4043239-baby-child-kid-toddler_113286.png"/>
// <img src="https://cdn.icon-icons.com/icons2/1736/PNG/128/4043248-avatar-female-portrait-woman_113285.png"/>
// <img src="https://cdn.icon-icons.com/icons2/1736/PNG/128/4043270-avatar-joker-squad-suicide-woman_113256.png"/>
