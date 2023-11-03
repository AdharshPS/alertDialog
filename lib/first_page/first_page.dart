import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void alertDialogFunc() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Exit Conformation"),
          content: Text("Do you want to exit"),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // SystemNavigator.pop();
                  },
                  child: Text("No"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Yes"),
                ),
                SizedBox(width: 10),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "Sample Application",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // print("Button pressed");
                alertDialogFunc();
              },
              child: Text("Alert"),
            ),

            // Snack Bar
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 4),
                    content: Text("Successful"),
                    action: SnackBarAction(label: "undo", onPressed: () {}),
                  ),
                );
              },
              child: Text("Snack"),
            ),

            // Bottom Sheet
            BottomSheet(),

            // Expansion Tile
            ExpansionTile(
              backgroundColor: Colors.amber,
              collapsedBackgroundColor: Colors.red,
              title: Text("Expansion Tile"),
              children: [
                Text(
                  "hello pumkin asbhba  jsdk b dlcbljsjdb lcsl kd ku lkukud ukudk hdu kdu iu iudsub iu diudsksd ud u hh idu dfh kdf h fh uh uhiu hiuidfh ilugvdsjh iuhiudh hniuu hidn h iuhv nkhuh iuhuh huh ahiu haiuh",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.grey[400],
          shape: BeveledRectangleBorder(),
          // isScrollControlled: true,
          context: context,
          builder: (context) => Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
      child: Text("BootomSheet"),
    );
  }
}
