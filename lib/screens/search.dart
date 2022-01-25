import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Search> {
  TextEditingController nameController = TextEditingController();
  String userName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp('[ ]')),
              ],
              style: const TextStyle(fontSize: 20.0),
              decoration: InputDecoration(
                focusColor: Colors.white,
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.search),
                ),
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Search',
                hintText: 'Enter your Search here',
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autocorrect: false,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Search"))
        ],
      ),
    );
  }
}
