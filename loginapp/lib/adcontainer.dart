import 'package:flutter/material.dart';
import 'package:loginapp/expanded_widget.dart';

class AdContainer extends StatelessWidget {
  const AdContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
      ),

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 242, 248, 255),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color.fromARGB(255, 115, 115, 115),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: const BoxConstraints(minHeight: 50),
      margin: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
      // ignore: prefer_const_constructors
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('John Doe'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Verified',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '3 days ago..',
                        style: TextStyle(
                          color: Color.fromARGB(255, 24, 24, 24),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text('4.5'),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amazing Product',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text('12 Gigs'),
                    ],
                  ),
                  Text.rich(TextSpan(
                      text: 'Category:',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: 'Electronics',
                            style: TextStyle(
                                color: Color.fromARGB(255, 87, 86, 86),
                                fontWeight: FontWeight.w700)),
                      ])),
                  Text.rich(TextSpan(
                      text: 'Location:',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: 'Colombo',
                            style: TextStyle(
                                color: Color.fromARGB(255, 87, 86, 86),
                                fontWeight: FontWeight.w700)),
                      ])),

                  // Expanded(
                  //     child: SingleChildScrollView(
                  //   child: ExpandedWidget(
                  //       text:
                  //           "The construction project involves the development of a new residential home, encompassing modern architectural design and superior craftsmanship. This project will feature a spacious layout, energy-efficient systems, and high-quality materials for lasting durability. The construction plan prioritizes sustainability and aesthetic appeal, ensuring a comfortable and environmentally conscious "),
                  // ))
                  SizedBox(
                    height: 10,
                  ),
                  ExpandedWidget(
                      text:
                          'ඉදිකිරීම් ව්‍යාපෘතියට නවීන වාස්තු විද්‍යාත්මක සැලසුම් සහ උසස් ශිල්පීය හැකියාවන් ඇතුළත් නව නේවාසික නිවසක් සංවර්ධනය කිරීම ඇතුළත් වේ. මෙම ව්‍යාපෘතියේ ඉඩකඩ සහිත පිරිසැලසුමක්, බලශක්ති කාර්යක්ෂම පද්ධති සහ කල් පවතින කල්පැවැත්ම සඳහා උසස් තත්ත්වයේ ද්‍රව්‍ය ඇතුළත් වේ. ඉදිකිරීම් සැලැස්ම තිරසාරත්වයට සහ සෞන්දර්යාත්මක ආකර්ෂණයට ප්‍රමුඛත්වය දෙන අතර සුවපහසු සහ පාරිසරික සවිඥානකත්වයක් සහතික කරයි.')
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       ElevatedButton(
            //           onPressed: () {},
            //           child: const Row(
            //             children: [
            //               Icon(Icons.chat),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               Text('Chat')
            //             ],
            //           )),
            //       ElevatedButton(
            //           onPressed: () {},
            //           child: const Row(
            //             children: [
            //               Icon(Icons.add),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               Text('Add Your Gig')
            //             ],
            //           ))
            //     ],
            //   ),
            // )

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 1),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const InkWell(
                          child: Row(
                        children: [
                          Icon(Icons.chat),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Chat')
                        ],
                      ))),
                  TextButton(
                      onPressed: () {},
                      child: const InkWell(
                          child: Row(
                        children: [
                          Icon(Icons.add_task),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Add Your Gig')
                        ],
                      ))),
                  TextButton(
                      onPressed: () {},
                      child: const InkWell(
                          child: Row(
                        children: [
                          Icon(Icons.save_sharp),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Save Post')
                        ],
                      ))),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
