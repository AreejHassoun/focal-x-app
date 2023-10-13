import 'package:flutter/material.dart';
import 'home_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 236, 234, 226),
            borderRadius: BorderRadius.circular(7),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xffff8500)),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        title: const Text(
          'Detail course',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xff303030),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Image.asset(
              'im1',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //padding:const EdgeInsets.symmetric(vertical: 10),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('im2')),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Step design sprint for beginner',
                    style: TextStyle(fontSize: 22, color: Color(0xff303030)),
                  ),
                  SizedBox(height: 16),
                  Row(children: [
                    Card(
                      color: Color(0xff4DC9D1),
                      child: Text(
                        '6 Lessons',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xff0082CD),
                      child: Text('Design',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                          )),
                    ),
                    Card(
                      color: Color(0xff8D5EF2),
                      child: Text('Free',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                          )),
                    ),
                  ]),
                  SizedBox(height: 16),
                  Text(
                      'In this course I will show the step by step, day by day, process to build better products, just as Google, Slack, KLM and manu other do.',
                      style: TextStyle(
                        color: Color(0xff9d9fa0),
                        fontSize: 14,
                      )),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('im3'),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('How to get feedback on their',
                        style: TextStyle(
                          color: Color(0xff303030),
                          fontSize: 14,
                        )),
                    Text('products in just 5 days',
                        style: TextStyle(
                          color: Color(0xff303030),
                          fontSize: 14,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text('04:10m',
                        style: TextStyle(
                          color: Color(0xff8c8c8c),
                          fontSize: 14,
                        )),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('im4'),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('How to decide which prototype ',
                        style: TextStyle(
                          color: Color(0xff303030),
                          fontSize: 13,
                        )),
                    Text('to implement',
                        style: TextStyle(
                          color: Color(0xff303030),
                          fontSize: 13,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text('data',
                        style: TextStyle(
                          color: Color(0xff8c8c8c),
                          fontSize: 14,
                        )),
                  ],
                )
              ],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width:MediaQuery.of(context).size.width*0.95 ,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF8500),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Center(
                  child: Text(
                    'Follow Class',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
