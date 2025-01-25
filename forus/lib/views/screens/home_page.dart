import 'package:flutter/material.dart';
import 'package:forusapp/views/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 80),
              // Container with box shadow
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black38),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      MyTextWidget(
                        myText: "GREETINGS, DERRICK",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 10),
                      MyTextWidget(
                        myText: "Have a nice day with a healthy mind",
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // GridView with cards
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(), // Disable scrolling inside GridView
                  shrinkWrap: true, // Makes GridView take only the necessary space
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10, // Space between columns
                    mainAxisSpacing: 10, // Space between rows
                    childAspectRatio: 1, // Aspect ratio of the items
                  ),
                  itemCount: 12, // Total number of items (2 columns x 6 rows)
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 4,
                      child: Center(
                        child: Text(
                          'Card ${index + 1}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
