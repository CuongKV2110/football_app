class Slide {
  final String imgUrl;
  final String content;
  final String description;

  Slide({
    required this.imgUrl,
    required this.content,
    required this.description,
  });
}

final slideList = [
  Slide(
    imgUrl: 'images/fb1.jpg',
    content: 'FOOTBALL FOR EVERYONE',
    description:
        'An application that provides full news, results, highlights and side information of players and teams',
  ),
  Slide(
    imgUrl: 'images/fb2.jpg',
    content: 'ACCURATE MATCH SUMMARY',
    description:
        'Synthesize the fastest and most accurate results to help users easily track and grasp',
  ),
  Slide(
    imgUrl: 'images/fb3.jpg',
    content: 'TRANSFER NEWS AND PLAYERS STATUS',
    description:
        'Players personal stories, status lines and shopping systems for clubs around the world',
  ),
];
