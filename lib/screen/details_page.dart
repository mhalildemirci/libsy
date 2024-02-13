import 'package:flutter/material.dart';
import 'package:libsy/screen/Home_Page.dart';

class DetailsPage extends StatefulWidget {
  final String imageName;
  final String description; // Add description parameter

  const DetailsPage({
    Key? key,
    required this.imageName,
    required this.description, // Update constructor
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      iconSize: screenWidth * 0.06,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    )
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: screenWidth, // Image size settings
                    child: Image.asset(
                      'assets/pics/${widget.imageName}', // here is images
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  widget.description, // Use description from widget
                  style: TextStyle(
                      fontSize: screenWidth * 0.1 / 3, color: Colors.white),
                ),
              ),
              Container(
                height: screenHeight * 0.1 / 1,
                child: Center(
                  child: Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.3 / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Read',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: screenHeight * 0.1 / 1,
                child: Center(
                  child: Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.3 / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Add List',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              slide('See Similar Content', [
                'A Christmas Carol.jpg',
                '11 Intentions.jpg',
                'A London Life.jpg',
                'A Modern Utopia.jpg',
                'a plug year.jpg',
                'america.jpg',
                'A Christmas Carol.jpg',
                'anna karenina.jpg',
                'art of war.jpg',
                // diğer resimler
              ]),
            ],
          ),
        ),
      ),
    );
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
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            imageName: imageList[index],
                            description: '',
                          ),
                        ));
                  },
                  child: Container(
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
