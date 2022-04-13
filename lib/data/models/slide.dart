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
    imgUrl: 'images/bgr1.png',
    content: 'SHARE YOUR MOMENT WITH FRIENDS',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipistsing alit. Lorem agestas congue sit pellentesque vel ut in',
  ),
  Slide(
    imgUrl: 'images/bgr2.png',
    content: 'SHARE YOUR MOMENT WITH FRIENDS',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipistsing alit. Lorem agestas congue sit pellentesque vel ut in',
  ),
  Slide(
    imgUrl: 'images/bgr3.png',
    content: 'SHARE YOUR MOMENT WITH FRIENDS',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipistsing alit. Lorem agestas congue sit pellentesque vel ut in',
  ),
];
