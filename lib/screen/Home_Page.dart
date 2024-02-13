import 'package:flutter/material.dart';
import 'package:libsy/screen/articles_page.dart';
import 'package:libsy/screen/books_page.dart';
import 'package:libsy/screen/categories_page.dart';
import 'package:libsy/screen/details_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define a map to store image descriptions

  Map<String, String> imageDescriptions = {
    '2 Poems.jpg':
        'Oscar Wilde was a 19th-century Irish writer, playwright and poet.He is best known forhis plays and satirical works, but he also left important works as a poet.Wildes poetry is often noted for its aesthetic and emotional depth and is often rendered with irony and wit.',
    'A Christmas Carol.jpg':
        'The story begins with Scrooge being visited on Christmas Eve by the ghost of his old partner Jacob Marley. Marley comes to warn Scrooge of the consequences of his life of selfishness and lovelessness and convinces Scrooge to go on a journey visited by three ghosts.',
    '11 Intentions.jpg':
        'Oscar Wilde was a 19th-century Irish writer, playwright and poet.He is best known forhis plays and satirical works, but he also left important works as a poet.Wildes poetry is often noted for its aesthetic and emotional depth and is often rendered with irony and wit.',
    'A London Life.jpg':
        'The plot revolves around a crumbling marriage and its impact on many people, especially Laura Wing, the sister of his soon-to-be divorced wife.',
    'A Modern Utopia.jpg':
        'The novel is best known for the idea that a volunteer class of nobles, known as Samurai, could effectively govern a "kinetic, not static" world state[2] and thus "solve the problem of combining progress with political stability".',
    'a plug year.jpg':
        'It was written by Daniel Defoe in the form of a diary describing what happened during the great plague epidemic in London. The spread of the epidemic in the city, the difficulties people faced, the ways the disease spread and the reactions of the society to this tragedy are discussed in detail in the work.',
    'america.jpg':
        'The story begins with a young man, Karl Rossmann, being sent to America. Karl is exiled from Europe because of a shameful incident that shamed his family and he is forced to go to America.',
    'anna karenina.jpg':
        "It tells the story of Anna's unhappy marriage and her forbidden love affair with the young and charismatic officer Count Vronsky. Anna's love and social ostracism lead to her mental breakdown and a tragic ending.",
    'art of war.jpg':
        'It is a classic text written by the Chinese military strategist Sun Tzu. Dating back to the 5th century BC, it contains in-depth insights on military strategy and leadership.',
    'ayesha the return of she.jpg':
        'Ayesha, The Return of She is a gothic-fantasy novel by English Victorian writer H. Rider Haggard, published in 1905 as a sequel to She. Chronologically, it is the last novel in the Ayesha and Allan Quatermain series.',
    'beyond good and evil.jpg':
        'Beyond Good and Evil: An Introduction to a Future Philosophy is a book written by the German philosopher Friedrich Nietzsche, published in 1886.',
    'cadi.jpg':
        "he widower Naşit Nefi Efendi's has remarried and witches have begun to roam his mansion. Naşit Nefi Efendi's first wife, Mrs. Binnaz, returns as a witch, haunting Naşit Nefi Efendi and his wives and giving them no rest.",
    'boon.jpg':
        'is about a group of intellectuals and thinkers discussing the progress and evolutionary journey of humanity.',
    'ask batagi.jpg':
        'It is the story of the marriage of Naki Efendi, who has been married twice, who is bored with the buttermilk-hearted women who are spoiled by his family, with his third wife Bedia. A novel that reveals how corrupt the old Istanbul life, loves and relationships are.',
    'Anticipations.jpg':
        'In "Anticipations", Wells discusses the social and technological developments of the early 20th century, political changes and how they might shape the future of humanity. ',
    'aski memnu.jpg':
        'Bihter was married off to the much older Adnan Bey, but later began a forbidden relationship with Behlül, with whom she fell in love. On the other hand, Mr. Adnan is niece Nihal has a platonic love for Behlül.',
    'bealby.jpg':
        'Bealby, the protagonist of the novel, escapes to save himself from an unwanted family environment and finds a job in a hotel. However, here too, he finds himself involved in a series of events and embarks on unexpected adventures. ',
    'kipps.jpg':
        'Kipps, a tailor apprentice in a small town, suddenly becomes a rich man with an inherited fortune. Thanks to this fortune, he rises to higher social classes and meets various segments of English society.',
    'Les Miserables.jpg':
        "Valjean is unjustly sentenced to nineteen years in prison, after which he embarks on a moral journey as he tries to reintegrate into society. Alongside him are other characters, such as the police officer Javert.",
    'meditations.jpg':
        "Marcus Aurelius, as a ruler of the Roman Empire, faced the challenges of everyday life, while remaining firmly rooted in the teachings of Stoic philosophy. this book reflects his inner thoughts and spiritual struggles, while also addressing universal issues such as human nature, justice, virtue and destiny.",
    'metamorphosis.jpg':
        'The novel begins with an unexpected transformation of a man named Gregor Samsa. One morning, Gregor wakes up to find himself transformed into an insect. This transformation begins a process of alienation and isolation, both physical and psychological.',
    'Middlemarch.jpg':
        'The story begins with the dreams of Dorothea Brooke, a young and idealistic woman, about marriage. Dorothea marries Mr. Casaubon, a wealthy but elderly clergyman, only to find a life that is the opposite of her dreams of marriage.',
    'pickwick club.jpg':
        'The novel follows the adventures of the Pickwick Club, a group of individuals who come together under the leadership of a rich and cheerful man named Samuel Pickwick. ',
    'othello.jpg':
        '"Othello," is a famous tragedy play written by William Shakespeare. The play deals with themes such as jealousy, betrayal and racism and dramatizes the tragic fall of Othello, a soldier.',
    'odysey.jpg':
        "'The Odyssey' deals with universal themes such as loyalty, love, courage, honor, cunning and justice. In addition, Homer's epic offers a rich portrait of ancient Greek mythology, customs and values.",
    'peter pan.jpg':
        "'Peter Pan,' It is a famous children's book written by J.M. Barrie. The story tells the fantastic adventures of a boy named Peter Pan and three siblings named Wendy, John and Michael.",
    'Prince Otto, a Romance.jpg':
        "The novel is set in a fictional German principality called the Grand Duchy of Gerolstein. Prince Otto struggles hard to secure his throne and stabilize his country. But when Otto's throne is threatened, he must fight against various political intrigues and dangers to protect himself and his country.",
    'romola.jpg':
        'Romola, our main character, is an intelligent and beautiful woman. A mature and intelligent soul, Romola faces the betrayal of her husband Tito Melema and struggles to rebuild her life. ',
    'rose in bloom.jpg':
        'The novel is about the life of Rose Campbell, a young and talented woman. Rose is the character we met in the novel "Eight Cousins" when she was fourteen. Now she is twenty-one and the focus is on her relationships with the people around her, her love life and her personal development.',
    'the light.jpg':
        'It tells the story of war through the eyes of Jean Diaz, a French soldier. As Diaz fights alongside other soldiers on the front line, he confronts the terrible realities of war. The senselessness of war, the fear of death, and the worst in human beings are among the things Diaz and the other soldiers experience.',
    'under fire.jpg':
        'The novel tells the story of a French battalion during a year at the front, the daily life of the soldiers and their confrontation with the terrible realities of war.',
    'wanders.jpg':
        "The novel tells the story of Ove's adventures and the various characters he encounters while traveling through the Norwegian countryside. Ove is someone who does not conform to the norms of society and opposes traditional ways of life. ",
    'mor salkimli ev.jpg':
        " The author begins the book by describing the events she remembers moment by moment as a child. At first, her memories include the Purple Wisteria House and her mother. Her memories of her mother do not last long because she lost her mother at a young age. Perhaps the most important memory she remembers about her mother's death is the saffron-colored cloth she saw at her mother's funeral.",
    'ruh adam.jpg':
        'The novel tells the story of a man who devoted his life to military service, his mental state after being discharged from the military profession, his fall into a love predicament, his struggle with his own ego due to being torn between his mind and his heart.',
    'she and allan.jpg':
        "The novel focuses on the character Ayesha, introduced in the previous novel 'She'. The story sheds light on Ayesha's past and her mysterious life.",
    'tatarcik.jpg':
        'The story centers on the life of Lale, a young and beautiful Turkish girl. Lale tries to find her own identity in the Ottoman society, which is under the influence of Westernization and modernization movements, while at the same time trying to find a balance between traditional values and modern life.',
    'peter pan in kensington gardens.jpg':
        "The story begins with Peter Pan's disappearance as a baby and continues with his fantastic adventures in Kensington Gardens. Peter meets the other children in the gardens, talks to the animals and is drawn into a magical world.",
    'sherlock holmes.jpg':
        'Holmes is a clever and careful detective, using his observations and logic to solve cases. In the many stories of the series, Holmes and Watson confront murders, robberies, missing persons and mysterious events on the streets of London and other places of the period. ',
    'the idiot.jpg':
        'It tells the story of Prince Lev Nikolayevich Myshkin. Myshkin returns to Russia after a long period of treatment in Switzerland for a mental illness. However, he encounters difficulties in his social environment and among the people around him.',
    'Around the World in 80 Days.jpg':
        'Phileas Fogg makes a bet to travel around the world in 80 days, starting from London. Together with his servant Passepartout, they visit various countries and continents using trains, ships and other means of transportation. But along their journey, they encounter a detective and various challenges.',
    'robinson crouse.jpg':
        'The novel tells the story of Robinson Crusoe, an English sailor who is shipwrecked on a remote island and tries to survive there alone. Crusoe spends years on the island, struggling to survive, building shelters, finding food and filling his time with various activities to avoid feeling alone on the island.',
    'Gullivers travel.jpg':
        ' Gulliver goes on four different journeys: Lilliput, Brobdingnag, Laputa and Houyhnhnms. Each country has a different social structure, culture and worldview. Through his experiences in these different societies, Gulliver discovers human nature, social structures and human weaknesses.',
    'aydakı kadın.jpg':
        'Leyla is a childless married woman. First she has sex with Suat, then she marries Refik with an inexplicable state of mind. ',
    'emma.jpg':
        'Emma is a novel about youthful pride and romantic misunderstandings. The novel is set in the fictional village of Highbury and the surrounding estates of Hartfield, Randalls and Donwell Abbey and is about the relationships between several families.',
    'kurk mantolu madonna.jpg':
        'Raif Efendi is an introverted, melancholic character who has difficulty adapting to the outside world. He has endured many hardships throughout his life and failed to stand up against injustice. He married a woman he did not love and had children, but he could not live a life according to his own wishes. He wrote in his diary the only happy moment he ever really felt.',
    'Love and Mr Lewisham.jpg':
        "At the beginning of the novel, Mr. Lewisham is an 18-year-old teacher at a boys' school in Sussex, earning forty pounds a year. He meets and falls in love with Ethel Henderson, who is visiting relatives.",
    'madame bovary.jpg':
        'The novel deals with the events and relationships experienced by Emma Bovary, the wife of Charles Bovary, a fair-hearted and conventional physician with high ideals and a love of excessive pomp, in order to escape from monotony.The author adopts the observant side of realism while describing the inner worlds of the figures.',
    'simdi sevisme vakti.jpg':
        "It deeply affects the reader by touching the lives, emotions and relationships of people wandering the streets of Istanbul. With their sad, melancholic and sometimes ironic tones, Sait Faik's short stories skillfully portray the inner world of human beings and the complexity of life.",
    // Add other image descriptions here
  };
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  late double screenWidth;

  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(0, 0, 0, 1.0),
                Color.fromRGBO(69, 60, 60, 1.0),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: screenHeight * 0.04,
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth * 0.1,
                      height: screenHeight * 0.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      color: Colors.white,
                      iconSize: screenWidth * 0.06,
                      onPressed: () {
                        // Search button transactions
                        showSearch(
                          context: context,
                          delegate: DataSearch(),
                        );
                      },
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(
                  screenWidth * 0.05,
                  screenHeight * 0.01,
                  screenWidth * 0.4,
                  0.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BooksPage()));
                            },
                            child: buildButton("Books"))),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArticlesPage()));
                            },
                            child: buildButton("Essays"))),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoriesPage()));
                            },
                            child: buildButton("Categories"))),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                      border:
                          Border.all(color: Color.fromRGBO(69, 60, 60, 1.0)),
                      image: DecorationImage(
                        image:
                            AssetImage('assets/pics/beyond good and evil.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: screenHeight * 0.50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.33,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.02),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.visibility),
                                  iconSize: screenWidth * 0.04,
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                                Text(
                                  'Read',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenWidth * 0.04,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.33,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.02),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.add),
                                  iconSize: screenWidth * 0.05,
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                                Text(
                                  'Add List',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenWidth * 0.04,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // White box lists
              slide('New Books', [
                '2 Poems.jpg',
                'A Christmas Carol.jpg',
                '11 Intentions.jpg',
                'A London Life.jpg',
                'A Modern Utopia.jpg',
                'a plug year.jpg',
                'america.jpg',
                'A Christmas Carol.jpg',
                'anna karenina.jpg',
                'art of war.jpg',
              ]),
              slide('Top 10', [
                'ayesha the return of she.jpg',
                'beyond good and evil.jpg',
                'cadi.jpg',
                'boon.jpg',
                'ask batagi.jpg',
                'Anticipations.jpg',
                'aski memnu.jpg',
                'bealby.jpg',
                'kipps.jpg',
                'Les Miserables.jpg',
              ]),
              slide('For You Recommends', [
                'Kidnapped.jpg',
                'kirik hayatlar.jpg',
                'jos boys.jpg',
                'Italian Hours.jpg',
                'kinglear.jpg',
                'little dorrit.jpg',
                'little men.jpg',
                'little woman.jpg',
                'anna karenina.jpg',
                'art of war.jpg',
              ]),
              slide('Interestend you books', [
                'meditations.jpg',
                'metamorphosis.jpg',
                'Middlemarch.jpg',
                'pickwick club.jpg',
                'A Modern Utopia.jpg',
                'othello.jpg',
                'odysey.jpg',
                'peter pan.jpg',
                'Prince Otto, a Romance.jpg',
                'art of war.jpg',
              ]),
              slide('Dramatic Artifacts', [
                'romola.jpg',
                'rose in bloom.jpg',
                'the light.jpg',
                'under fire.jpg',
                'wanders.jpg',
                'aski memnu.jpg',
                'mor salkimli ev.jpg',
                'ruh adam.jpg',
                'she and allan.jpg',
                'tatarcik.jpg',
              ]),
              slide('World of Classics', [
                'peter pan in kensington gardens.jpg',
                'peter pan.jpg',
                'odysey.jpg',
                'sherlock holmes.jpg',
                'the idiot.jpg',
                'anna karenina.jpg',
                'Around the World in 80 Days.jpg',
                'art of war.jpg',
                'robinson crouse.jpg',
                'Gullivers travel.jpg',
              ]),
              slide('Full of Love Novels', [
                'aski memnu.jpg',
                'ruh adam.jpg',
                'mor salkimli ev.jpg',
                'ask batagi.jpg',
                'aydakı kadın.jpg',
                'emma.jpg',
                'kurk mantolu madonna.jpg',
                'Love and Mr Lewisham.jpg',
                'madame bovary.jpg',
                'simdi sevisme vakti.jpg',
                // orther images
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget slide(dynamic info, List<String> imageList) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        screenWidth * 0.05,
        screenHeight * 0.02,
        screenWidth * 0.05,
        0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            info,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            height: screenHeight * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                            imageName: imageList[index],
                            description:
                                imageDescriptions[imageList[index]] ?? ""),
                      ),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.20, // box lenght
                    height: screenHeight * 0.1,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: AssetImage('assets/pics/${imageList[index]}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text) {
    return Container(
      width: screenWidth * 0.2,
      height: screenHeight * 0.04,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth * 0.020,
          ),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  List<String> searchTerms = [];
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          //to change appbar
          color: Colors.black,
        ));
  }

  List<Widget> buildActions(BuildContext context) {
    // Sağ üstteki temizleme ikonu
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<String> matchQuery = [];
    for (var books in searchTerms) {
      if (books.toLowerCase().contains(query.toLowerCase())) ;
      {
        matchQuery.add(books);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> matchQuery = [];
    for (var books in searchTerms) {
      if (books.toLowerCase().contains(query.toLowerCase())) ;
      {
        matchQuery.add(books);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('tr'), // Turkish
      ],
      home: HomePage(),
    ),
  );
}
