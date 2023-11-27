abstract class PositionOnMap {
  PositionOnMap({required this.x, required this.y});
  final double x;
  final double y;
}

enum IslandName {
  sound,
  design,
  technology,
  animation,
  beauty,
  taste,
  feather,
}

class Island extends PositionOnMap {
  Island({
    required super.x,
    required super.y,
    required this.island,
    required this.description,
  });

  final IslandName island;
  final String description;
}

final List<Island> islands = [
  Island(
    island: IslandName.animation,
    description:
        'High above the clouds, nestled amidst a sea of fluffy cotton candy-like formations, lay the whimsical Animation Island. Its name was a testament to its vibrant, ever-changing nature, a mesmerizing canvas where imagination danced and dreams took flight.\n\nThe island was a realm of endless possibilities, a place where the boundaries between reality and fantasy blurred into a kaleidoscope of colors and shapes. Buildings morphed and shifted, their forms fluid and ever-evolving, reflecting the boundless creativity that permeated the air.\nOn Animation Island, every day was an adventure, a journey into the boundless realm of imagination. The inhabitants embraced the ever-changing nature of their world, their spirits as fluid and vibrant as the island itself.',
    x: 0,
    y: 0,
  ),
  Island(
    island: IslandName.design,
    description:
        'High above the swirling clouds, suspended in the ethereal embrace of the sky, lay the island of Design. A realm of boundless creativity, where imagination reigned supreme and the boundaries of the ordinary were gleefully shattered. Upon this celestial canvas, a vibrant tapestry of dreams unfolded, each thread woven with the ingenuity of the island\'s inhabitants.\n\nIn this extraordinary haven, architects sculpted clouds into awe-inspiring structures, their designs defying gravity\'s relentless pull. Fashion designers adorned the sky with garments of shimmering rainbows, their creations dancing in the celestial breeze. And musicians composed symphonies from the whispers of the wind, their melodies echoing through the boundless expanse.\n\n On Design, the act of creation was not merely a profession; it was the very essence of existence. Every breath, every thought, every movement was imbued with a yearning to innovate, to transform the ordinary into the extraordinary. And so, the island hummed with an unyielding energy, a symphony of creativity that reverberated across the heavens.',
    x: 0,
    y: 0,
  ),
  Island(
    island: IslandName.technology,
    description:
        'Suspended amidst the swirling clouds, an island unlike any other hovered gracefully, its shimmering surface a testament to the marvels of human ingenuity. This was Technologia, a sanctuary of innovation, where the boundaries of science and imagination blurred into a dazzling spectacle of technological advancement.\n\nUpon its metallic shores, towering structures of glass and steel pierced the celestial expanse, their intricate circuitry pulsating with an otherworldly glow. Within these marvels of engineering, brilliant minds toiled day and night, their minds ablaze with the relentless pursuit of knowledge.\n\nBeneath the island\'s gleaming surface, a network of intricate pathways snaked through its core, connecting the various districts and powering the island\'s extraordinary functions. Hovercars zipped along these luminous arteries, their occupants engaged in a flurry of activity, their minds consumed by the endless possibilities that Technologia offered.\n\nIn the heart of the island, a magnificent structure known as the Nexus served as the epicenter of innovation. Its towering spires reached towards the heavens, symbolizing humanity\'s relentless aspiration to transcend its earthly limitations. Within its hallowed halls, inventors, engineers, and scientists collaborated tirelessly, their collective brilliance giving rise to technological breakthroughs that would forever alter the course of human history.\n\n Technologia was not merely a physical construct; it was a beacon of hope, a testament to the limitless potential that lay dormant within the human spirit. It was a place where dreams were not confined by the constraints of reality, but rather embraced and nurtured, transforming into tangible realities that would shape the future of humanity.',
    x: 0,
    y: 0,
  ),
  Island(
    island: IslandName.sound,
    description:
        'In the vast expanse of the cerulean sky, suspended amidst fluffy clouds like a celestial mirage, lay the ethereal Sound Island. A sanctuary of melodies, where the very air hummed with an enchanting symphony of sounds. The island was an enigma, its existence whispered in tales and folklore, a hidden realm accessible only to those with ears attuned to its subtle vibrations.\n\nOn this extraordinary island, the inhabitants were not humans, but creatures of pure sound, their bodies composed of the very essence of music. They danced to the rhythm of the wind, their laughter echoing like a cascade of chimes. Their homes were melodies woven into the fabric of the clouds, their voices like the songs of birds.\n\nUpon reaching Sound Island, Lily was greeted by a symphony of welcoming sounds, a harmonious chorus of greetings that echoed through her very soul. The inhabitants embraced her with open arms, their musical essence intertwining with her own.\n\nLily spent her days on Sound Island immersed in the world of pure sound. She learned to dance with the wind, her steps harmonizing with the rhythm of the clouds. She sang with the birds, their melodies weaving a tapestry of joy around her. And she listened, with her heart open wide, to the stories told in the language of sound, tales of love and laughter, of hope and dreams.',
    x: 0,
    y: 0,
  ),
  Island(
    island: IslandName.taste,
    description:
        'On a celestial canvas of swirling clouds and vibrant stars, there existed an island called Taste, a culinary oasis suspended amidst the heavens. Its inhabitants were a whimsical bunch, their lives revolving around the tantalizing symphony of flavors that danced upon their taste buds.\n\nThe island itself was a culinary paradise, a land sculpted by delectable treats and fragrant aromas. Trees bore fruits that tasted like every imaginable dessert, their juices cascading like nectar. Rivers flowed with broths and sauces, their currents carrying the essence of culinary delights. Mountains were sculpted from spices, their peaks emitting clouds that perfumed the air.\n\nThe Taste Islanders were a diverse and eccentric lot, their personalities as varied as the flavors they savored. There was Umami, the wise and experienced elder who could identify any ingredient by its taste alone. There was Sweet, the bubbly and optimistic young chef who could create the most decadent desserts. There was Sour, the sharp-witted critic who could pinpoint the slightest flaw in a dish. And there was Bitter, the introspective philosopher who pondered the deeper meaning of taste.\n\nThe islanders took Bland under their wing, introducing him to the wonders of their culinary world. They taught him to savor the sweetness of a ripe fruit, the tanginess of a citrus, the umami of a perfectly aged cheese. Bland\'s world was transformed. His taste buds awakened, he discovered a symphony of flavors he never knew existed.\n\nAnd so, Taste Island continued to float amidst the stars, a beacon of culinary creativity and a testament to the transformative power of taste. Its inhabitants, forever united by their love of food, continued to explore the vast expanse of flavor, their creations a symphony of delight echoing across the celestial canvas.',
    x: 0,
    y: 0,
  ),
  Island(
    island: IslandName.beauty,
    description:
        'Legends spoke of its iridescent shores, where the sands shimmered like a thousand diamonds, and its verdant meadows, where wildflowers bloomed in perpetual spring. The air was perpetually perfumed with the intoxicating fragrance of celestial blossoms, and the island hummed with a melody that resonated with the very soul.\n\nOn this island of enchantment, beauty was not merely a fleeting sight but an intrinsic essence, woven into the very fabric of existence. The inhabitants of Beauty, ethereal beings of radiant luminescence, moved with an otherworldly grace, their laughter echoing like the tinkling of wind chimes.\n\nTheir hearts were as pure as the morning dew, their spirits as untainted as the first rays of dawn. They were the embodiment of beauty, their existence a testament to the boundless creativity of the universe.\n\nBut the island of Beauty remained an elusive dream, a beacon of hope that shimmered just beyond their grasp. It served as a reminder that true beauty lay not in the superficial charm of the physical world but in the purity of the spirit, in the harmony between the inner and the outer, in the essence of existence itself.',
    x: 0,
    y: 0,
  ),
  Island(
    island: IslandName.feather,
    description:
        'In the vast expanse of the cerulean sky, suspended by wisps of ethereal clouds, lay the island of Feather. A haven of tranquility, its verdant meadows carpeted with wildflowers and its crystalline streams meandering through lush forests, Feather was a secret paradise, hidden from the eyes of the world below.\n\nLegend whispered of its existence, passed down through generations as a celestial sanctuary, a refuge for those seeking solace from the turmoil of earthly life. Its name, Feather, echoed the delicate lightness of the island, its ethereal beauty as fleeting as a feather carried by the wind.\n\nOne day, a storm of unprecedented fury raged across the heavens, its tempestuous winds threatening to dislodge the island from its airy perch. Fear gripped the hearts of Feather\'s inhabitants, their tranquil existence teetering on the brink of chaos.\n\nAmidst the chaos, a young girl named Elara, her spirit as pure as the island itself, stood tall amidst the fear and uncertainty. With unwavering faith in the island\'s resilience, she ascended to the highest peak, her eyes fixed on the tumultuous sky.\n\nAs the storm reached its crescendo, a single feather, shimmering with an otherworldly radiance, descended from the heavens, gently settling into Elara\'s outstretched palm. In that moment, a profound connection was forged between the island and its young guardian.',
    x: 0,
    y: 0,
  ),
];
