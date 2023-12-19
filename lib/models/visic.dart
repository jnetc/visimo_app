import 'package:flutter_visimo/models/user.dart';

class Visic {
  Visic({
    required this.name,
    required this.type,
    required this.rating,
    required this.image,
    required this.description,
    required this.isSelected,
  }) : id = uuid.generate();

  final String id;
  final String name;
  final String type;
  final int rating;
  final String image;
  final String description;
  final bool isSelected;
}

final visics = [
  Visic(
    name: 'Simple Me',
    type: 'common',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'In a hidden meadow, not far from the enchanted forest, there lived a shy and delicate creature named Whisk. Whisk was a small ball of fuzz with the most enchanting shade of lavender fur. Unlike its boisterous forest friends, Whisk preferred the quiet corners, where wildflowers danced in the gentle breeze.\n\nOne day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.One day, a sudden rainstorm surprised the meadow, and a tiny, drenched bunny named Bubbles found itself alone and scared. Whisk, with its compassionate heart, noticed the trembling bunny and immediately opened its soft, fluffy arms. Bubbles hopped into Whisk\'s embrace, and the lavender creature provided the coziest shelter from the rain.\n\nAs the raindrops played a soothing melody on the leaves, Whisk and Bubbles nestled together, creating a heartwarming tableau of friendship. The sun eventually peeked through the clouds, casting a warm glow over the meadow. From that day forward, Whisk and Bubbles became inseparable companions, sharing the magic of the meadow and the comfort of their soft, plush adventures. And so, in the quiet beauty of the lavender meadow, Whisk and Bubbles lived happily, their friendship blooming like the flowers around them.Word of Whisk\'s kindness spread throughout the forest, and soon, all the animals wanted to be near this soft, comforting creature. Whisk became the heart of the enchanted forest, bringing comfort and happiness to every corner.\n\nAnd so, in the heart of the magical woods, Whisk and its friends lived happily ever after, surrounded by the warmth of friendship and the softness of Whisk\'s fluffy embrace.',
    isSelected: true,
  ),
  Visic(
    name: 'Vivid',
    type: 'common',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'Once upon a time in the enchanted forest, there lived a tiny, fluffy creature named Whisk. Whisk was a soft and gentle being with fur as white as freshly fallen snow. Every day, Whisk would roam the forest, spreading joy and warmth to all the woodland creatures.\n\nOne day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.',
    isSelected: false,
  ),
  Visic(
    name: 'Colorfull',
    type: 'common',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'One day, a sudden rainstorm surprised the meadow, and a tiny, drenched bunny named Bubbles found itself alone and scared. Whisk, with its compassionate heart, noticed the trembling bunny and immediately opened its soft, fluffy arms. Bubbles hopped into Whisk\'s embrace, and the lavender creature provided the coziest shelter from the rain.\n\nAs the raindrops played a soothing melody on the leaves, Whisk and Bubbles nestled together, creating a heartwarming tableau of friendship. The sun eventually peeked through the clouds, casting a warm glow over the meadow. From that day forward, Whisk and Bubbles became inseparable companions, sharing the magic of the meadow and the comfort of their soft, plush adventures. And so, in the quiet beauty of the lavender meadow, Whisk and Bubbles lived happily, their friendship blooming like the flowers around them.',
    isSelected: false,
  ),
  Visic(
    name: 'Superman',
    type: 'common',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'As the raindrops played a soothing melody on the leaves, Whisk and Bubbles nestled together, creating a heartwarming tableau of friendship. The sun eventually peeked through the clouds, casting a warm glow over the meadow. From that day forward, Whisk and Bubbles became inseparable companions, sharing the magic of the meadow and the comfort of their soft, plush adventures. And so, in the quiet beauty of the lavender meadow, Whisk and Bubbles lived happily, their friendship blooming like the flowers around them.',
    isSelected: false,
  ),
  Visic(
    name: 'Super mushroom',
    type: 'common',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'In a hidden meadow, not far from the enchanted forest, there lived a shy and delicate creature named Whisk. Whisk was a small ball of fuzz with the most enchanting shade of lavender fur. Unlike its boisterous forest friends, Whisk preferred the quiet corners, where wildflowers danced in the gentle breeze.\n\nOne day, a sudden rainstorm surprised the meadow, and a tiny, drenched bunny named Bubbles found itself alone and scared. Whisk, with its compassionate heart, noticed the trembling bunny and immediately opened its soft, fluffy arms. Bubbles hopped into Whisk\'s embrace, and the lavender creature provided the coziest shelter from the rain.',
    isSelected: false,
  ),
  Visic(
    name: 'Bad bomz on the street',
    type: 'rare',
    rating: 2,
    image: 'assets/visic/visic.webp',
    description:
        'Once upon a time in the enchanted forest, there lived a tiny, fluffy creature named Whisk. Whisk was a soft and gentle being with fur as white as freshly fallen snow. Every day, Whisk would roam the forest, spreading joy and warmth to all the woodland creatures.\n\nWord of Whisk\'s kindness spread throughout the forest, and soon, all the animals wanted to be near this soft, comforting creature. Whisk became the heart of the enchanted forest, bringing comfort and happiness to every corner.',
    isSelected: false,
  ),
  Visic(
    name: 'Street Fighter',
    type: 'common',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'Once upon a time in the enchanted forest, there lived a tiny, fluffy creature named Whisk. Whisk was a soft and gentle being with fur as white as freshly fallen snow. Every day, Whisk would roam the forest, spreading joy and warmth to all the woodland creatures.\n\nOne day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.',
    isSelected: false,
  ),
  Visic(
    name: 'Forever Black',
    type: 'rare',
    rating: 3,
    image: 'assets/visic/visic.webp',
    description:
        'Word of Whisk\'s kindness spread throughout the forest, and soon, all the animals wanted to be near this soft, comforting creature. Whisk became the heart of the enchanted forest, bringing comfort and happiness to every corner.\n\nAnd so, in the heart of the magical woods, Whisk and its friends lived happily ever after, surrounded by the warmth of friendship and the softness of Whisk\'s fluffy embrace.',
    isSelected: false,
  ),
  Visic(
    name: 'White Witch',
    type: 'common',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'One day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.',
    isSelected: false,
  ),
  Visic(
    name: 'Marvell Hero',
    type: 'rare',
    rating: 5,
    image: 'assets/visic/visic.webp',
    description:
        'One day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.\n\nWord of Whisk\'s kindness spread throughout the forest, and soon, all the animals wanted to be near this soft, comforting creature. Whisk became the heart of the enchanted forest, bringing comfort and happiness to every corner.\n\nAnd so, in the heart of the magical woods, Whisk and its friends lived happily ever after, surrounded by the warmth of friendship and the softness of Whisk\'s fluffy embrace.',
    isSelected: false,
  ),
  Visic(
    name: 'Moon Walker',
    type: 'legendary',
    rating: 4,
    image: 'assets/visic/visic.webp',
    description:
        'One day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.\n\nOne day, a sudden rainstorm surprised the meadow, and a tiny, drenched bunny named Bubbles found itself alone and scared. Whisk, with its compassionate heart, noticed the trembling bunny and immediately opened its soft, fluffy arms. Bubbles hopped into Whisk\'s embrace, and the lavender creature provided the coziest shelter from the rain.',
    isSelected: false,
  ),
  Visic(
    name: 'Fall Angel',
    type: 'rare',
    rating: 2,
    image: 'assets/visic/visic.webp',
    description:
        'As the raindrops played a soothing melody on the leaves, Whisk and Bubbles nestled together, creating a heartwarming tableau of friendship. The sun eventually peeked through the clouds, casting a warm glow over the meadow. From that day forward, Whisk and Bubbles became inseparable companions, sharing the magic of the meadow and the comfort of their soft, plush adventures. And so, in the quiet beauty of the lavender meadow, Whisk and Bubbles lived happily, their friendship blooming like the flowers around them.\n\nWord of Whisk\'s kindness spread throughout the forest, and soon, all the animals wanted to be near this soft, comforting creature. Whisk became the heart of the enchanted forest, bringing comfort and happiness to every corner.\n\nAnd so, in the heart of the magical woods, Whisk and its friends lived happily ever after, surrounded by the warmth of friendship and the softness of Whisk\'s fluffy embrace.',
    isSelected: false,
  ),
  Visic(
    name: 'Blood Saw',
    type: 'locked',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'One day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.\n\nWord of Whisk\'s kindness spread throughout the forest, and soon, all the animals wanted to be near this soft, comforting creature. Whisk became the heart of the enchanted forest, bringing comfort and happiness to every corner.\n\nAnd so, in the heart of the magical woods, Whisk and its friends lived happily ever after, surrounded by the warmth of friendship and the softness of Whisk\'s fluffy embrace.',
    isSelected: false,
  ),
  Visic(
    name: 'Black Hole',
    type: 'locked',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'One day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.\n\nOne day, a sudden rainstorm surprised the meadow, and a tiny, drenched bunny named Bubbles found itself alone and scared. Whisk, with its compassionate heart, noticed the trembling bunny and immediately opened its soft, fluffy arms. Bubbles hopped into Whisk\'s embrace, and the lavender creature provided the coziest shelter from the rain.',
    isSelected: false,
  ),
  Visic(
    name: 'Cyber Soldier',
    type: 'locked',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'As the raindrops played a soothing melody on the leaves, Whisk and Bubbles nestled together, creating a heartwarming tableau of friendship. The sun eventually peeked through the clouds, casting a warm glow over the meadow. From that day forward, Whisk and Bubbles became inseparable companions, sharing the magic of the meadow and the comfort of their soft, plush adventures. And so, in the quiet beauty of the lavender meadow, Whisk and Bubbles lived happily, their friendship blooming like the flowers around them.\n\nWord of Whisk\'s kindness spread throughout the forest, and soon, all the animals wanted to be near this soft, comforting creature. Whisk became the heart of the enchanted forest, bringing comfort and happiness to every corner.\n\nAnd so, in the heart of the magical woods, Whisk and its friends lived happily ever after, surrounded by the warmth of friendship and the softness of Whisk\'s fluffy embrace.',
    isSelected: false,
  ),
  Visic(
    name: 'Detective',
    type: 'locked',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'One day, as Whisk was exploring near the shimmering creek, it stumbled upon a lost baby bird. The little bird, chirping sadly, looked up at Whisk with big, round eyes. Without hesitation, Whisk gently cradled the bird in its fluffy arms and started singing a lullaby. The soothing melody worked like magic, and the baby bird quickly fell asleep.\n\nOne day, a sudden rainstorm surprised the meadow, and a tiny, drenched bunny named Bubbles found itself alone and scared. Whisk, with its compassionate heart, noticed the trembling bunny and immediately opened its soft, fluffy arms. Bubbles hopped into Whisk\'s embrace, and the lavender creature provided the coziest shelter from the rain.',
    isSelected: false,
  ),
  Visic(
    name: 'Yakudza',
    type: 'locked',
    rating: 0,
    image: 'assets/visic/visic.webp',
    description:
        'As the raindrops played a soothing melody on the leaves, Whisk and Bubbles nestled together, creating a heartwarming tableau of friendship. The sun eventually peeked through the clouds, casting a warm glow over the meadow. From that day forward, Whisk and Bubbles became inseparable companions, sharing the magic of the meadow and the comfort of their soft, plush adventures. And so, in the quiet beauty of the lavender meadow, Whisk and Bubbles lived happily, their friendship blooming like the flowers around them.\n\nWord of Whisk\'s kindness spread throughout the forest, and soon, all the animals wanted to be near this soft, comforting creature. Whisk became the heart of the enchanted forest, bringing comfort and happiness to every corner.\n\nAnd so, in the heart of the magical woods, Whisk and its friends lived happily ever after, surrounded by the warmth of friendship and the softness of Whisk\'s fluffy embrace.',
    isSelected: false,
  ),
];
