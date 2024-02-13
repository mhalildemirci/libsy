import 'package:flutter/material.dart';
import 'package:libsy/screen/Home_Page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
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
            ])),
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
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    iconSize: screenWidth * 0.06,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  )
                ],
              ),
            ),
            slide('Dunya Klasikleri', [
              'A Christmas Carol.jpg',
              'anna karenina.jpg',
              'oliver twist.jpg',
              'a tale of two cities.jpg',
              'divine comedy.jpg',
              'the crime and punishment.jpg',
              'the brothers karamazoc.jpg',
              'Les Miserables.jpg',
              'don quixote.jpg',
              'Gullivers travel.jpg',
              'robinson crouse.jpg',
            ]),
            slide('Cocuk Romanlari', [
              'Alices Adventures in Wonderland.jpg',
              'peter pan.jpg',
              'peter pan in kensington gardens.jpg',
              'classic for chilldren.jpg',
            ]),
            slide('Polisiye Romanlar', [
              'The Secret Adversary.jpg',
              'The Murder on the links.jpg',
              'The Man in the Brown Suits.jpg',
              'the mystery of the blue train.jpg',
              'sherlock holmes.jpg',
              'The Crime of the Congo.jpg',
              'the whıte company.jpg',
            ]),
            slide('Turk Edebiyati', [
              'aydakı kadın.jpg',
              'bes sehir.jpg',
              'huzur.jpg',
              'saatlerı ayarlama enstıtusu.jpg',
              'yasadigim gibi.jpg',
              'MAHUR BESTE.jpg',
              'mor salkimli ev.jpg',
              'vurun kahpeye.jpg',
              'sinekkli bakkal.jpg',
              'sevda sokagi komedyasi.jpg',
              'tatarcik.jpg',
              'kalp agrisi.jpg',
              'aski memnu.jpg',
              'kirik hayatlar.jpg',
              'bugunun saraylisi.jpg',
              'saray ve otesi.jpg',
              'kasagi.jpg',
              'memleket hikayeleri.jpg',
              'yezidin kizi.jpg',
              'yeni dunya.jpg',
              'istanbulun ic yuzu.jpg',
              'semaver.jpg',
              'oyle bir hikaye.jpg',
              'simdi sevisme vakti.jpg',
            ]),
            slide('Klasik Romanlar', [
              'A Christmas Carol.jpg',
              'oliver twist.jpg',
              'the great gatsby.jpg',
              'madame bovary.jpg',
              'The Adventures of Tom Sawyer.jpg',
              'The Prince and the Pauper.jpg',
              'Adventures of Huckleberry Finn.jpg',
              'Middlemarch.jpg',
              'the beautiful and damned.jpg',
            ]),
            slide('Fantastik Kitaplar', [
              'the wuthering heights.jpg',
              'this side of paradise.jpg',
              'Dorothy amd the Wizard Oz.jpg',
              'Twenty Thousand Leagues Under the Sea.jpg',
              'The Fur Country.jpg',
              'Around the World in 80 Days.jpg',
              'The Master of the World.jpg',
              'The Time Machine.jpg',
              'The Wonderful Visit.jpg',
              'The Island of Dr. Moreau.jpg',
              'The Invisible Man.jpg',
              'The Wheels of Chance.jpg',
              'The sleeper awakes.jpg',
              'Love and Mr Lewisham.jpg',
              'The First Men In The Moon.jpg',
              'The Sea Lady.jpg',
            ]),
            slide('Gezi Yazilari', [
              'Italian Hours.jpg',
              'seyehatname.jpg',
              'ibni batuta.jpg',
            ]),
            slide('Romanlar', [
              'Life on the Mississippi.jpg',
              'A Connecticut Yankee in King Arthurs Court.jpg',
              'Tom Sawyer, Detective.jpg',
              'Tono-Bungay.jpg',
              'silas marner.jpg',
              'songs of innocence.jpg',
              'tempest.jpg',
              'the bostanians.jpg',
              'The Cossacks.jpg',
              'The Exemplary Novels of Cervantes.jpg',
              'The Door in the Wall.jpg',
              'The Burning Secret.jpg',
              'The Chartreuse of Parma.jpg',
              'the confidence.jpg',
              'The Critique of Pure Reason.jpg',
              'the desert village.jpg',
              'the gambler.jpg',
              'The History Of Mr. Polly.jpg',
              'The Hunting of the Snark.jpg',
              'The Innocents Abroad, travel.jpg',
              'the idiot.jpg',
              'The Sea Lady.jpg',
              'The Time Machine.jpg',
            ]),
            slide('Oyku Kitaplari', [
              'New Arabian.jpg',
              'Prince Otto, a Romance.jpg',
              'St. Ives.jpg',
              'The Black Arrow. A Tale Of Two Roses.jpg',
              'The Door in the Wall.jpg',
              'A Tangled Tale.jpg',
              'alemdagda bir yilan.jpg',
              'ask batagi.jpg',
              'barnaby rudge.jpg',
              'bozkurtlar diriliyor.jpg',
              'bozkurtlarin olumu.jpg',
              'butun oykuler.jpg',
              'cleopatra.jpg',
            ]),
            slide('Siirler', [
              'Three Sunsets and Other Poems.jpg',
              'poems of william blake.jpg',
              '2 Poems.jpg',
              'An Elegy on the Glory of her Sex.jpg',
              'capitale de la douleur.jpg',
              'faust 1.jpg',
              'faust 2.jpg',
            ]),
            slide('Deneme', [
              'art of war.jpg',
              'A Short History of the World.jpg',
              'adventures in journalism.jpg',
              'an enquiry concerning human understanding.jpg',
              'an enquiry concerning the principles of morals.jpg',
              'Anticipations.jpg',
              'ay pesinde.jpg',
              'dirilen iskelet.jpg',
            ]),
            slide('Romantizm', [
              'the-sorrows-of-young-werther.jpg',
              'sense and sensibility.jpg',
              'emma.jpg',
              'pride and prejudice.jpg',
              'a tale of two cities.jpg',
              'madame bovary.jpg',
              'anna karenina.jpg',
              'little men.jpg',
              'little woman.jpg',
              'jos boys.jpg',
              'eight cousins.jpg',
              'rose in bloom.jpg',
            ]),
            slide('Gunluk Yazilari', [
              'a plug year.jpg',
              'balkan harbi.jpg',
              'homage to catalonia.jpg',
              'atesten gomlek.jpg',
              'turkun atesle imtihani.jpg',
              'meditations.jpg',
              'Protagoras.jpg',
              'our with spain for cuba freedom.jpg',
              'The war in the east japan.jpg',
            ]),
            slide('Macera', [
              'Around the World in 80 Days.jpg',
              'The Adventures of Tom Sawyer.jpg',
              'The Prince and the Pauper.jpg',
              'Adventures of Huckleberry Finn.jpg',
              'robinson crouse.jpg',
              'The Mysterious Island.jpg',
            ]),
            slide('Korku Romanlari', [
              'the inferno.jpg',
              'under fire.jpg',
              'The Chartreuse of Parma.jpg',
              'The Burning Secret.jpg',
              'cadi.jpg',
            ]),
            slide('Dram', [
              'madame bovary.jpg',
              'Les Miserables.jpg',
              'Notre Dame de Paris.jpg',
              'the crime and punishment.jpg',
              'the brothers karamazoc.jpg',
              'Death in Venice.jpg',
              'mrs  dalloway in bond street.jpg',
            ]),
            slide('Bilimsel Eserler', [
              'general-introduction-to-psychoanalysis.jpg',
              'three-essays-on-the-theory-of-sexuality.jpg',
              'totem-and-taboo.jpg',
              'dream psychology.jpg',
              'Protagoras.jpg',
              'natural selection.jpg',
              'the voyage of the beagle.jpg',
              'an enquiry concerning human understanding.jpg',
              'an enquiry concerning the principles of morals.jpg',
              'dialogues concerning natural religion.jpg',
              'a treatise of human nature.jpg',
              'The Critique of Pure Reason.jpg',
              'beyond good and evil.jpg',
              'Human, All Too Human.jpg',
              'The Antichrist.jpg',
              'the genealogy of morals.jpg',
              'The Twilight of the Idols.jpg',
              'thus spake zarathustra.jpg',
            ]),
          ],
        ),
      ),
    ));
  }

  Widget slide(String info, List<String> imageList) {
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
                return Container(
                  width: screenWidth * 0.20, // Kutu uzunluğu
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
