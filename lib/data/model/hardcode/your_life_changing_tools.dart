import 'package:talent_dna/core/constants/assets.dart';

class CardData {
  final String title;
  final String description;
  final String image;

  CardData({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<CardData> cardDataListHome = [
  CardData(
    title: 'DRIVE',
    description: 'Your Inner motivation to achieve something',
    image: BgDrive.bgDrive,
  ),
  CardData(
    title: 'NETWORK',
    description:
        'How you build your relations with others, and also how you interact with others.',
    image: BgNetwork.bgNetwork,
  ),
  CardData(
    title: 'ACTION',
    description: 'How you plan and execute something.',
    image: BgAction.bgAction,
  )
];
