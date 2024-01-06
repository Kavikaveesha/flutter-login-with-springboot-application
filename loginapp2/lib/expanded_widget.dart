import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  final String text;
  const ExpandedWidget({super.key, required this.text});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  late String firstHalf;
  late String secondHalf;
  bool flag = true;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 150);
      secondHalf = widget.text.substring(151, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(widget.text)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(flag ? firstHalf : widget.text),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        flag ? 'Show More' : 'Show Less',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 108, 106, 106)),
                      ),
                      flag
                          ? const Icon(Icons.keyboard_arrow_down,
                              color: Color.fromARGB(255, 108, 106, 106))
                          : const Icon(Icons.keyboard_arrow_up,
                              color: Color.fromARGB(255, 108, 106, 106))
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
