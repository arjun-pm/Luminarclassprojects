import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  await Hive.openBox("mybox");
  runApp(MaterialApp(
    home: HiveDemo(),
  ));
}

class HiveDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HiveDemoState();
}

class HiveDemoState extends State {
  List<Map<String, dynamic>> items = [];
  var box = Hive.openBox("mybox");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive 1"),
      ),
      body: items.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final current_item =
                    items[index]; //fetching a single key-value pair from a list
                return Card(
                  child: ListTile(
                    title: current_item["name"],
                    subtitle: current_item["quantity"],
                    trailing: Row(
                      children: [
                        IconButton(onPressed: () {
                          _showForm(context, current_item["key"]);
                        }, icon: Icon(Icons.edit)),
                        IconButton(onPressed: () {
                          deletitem(current_item["key"]);
                        }, icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(context, null),
        child: const Icon(Icons.add),
      ),
    );
  }

}

final name_controller = TextEditingController();
final quantity_controller = TextEditingController();

_showForm(BuildContext context, int? key) async {
  var itemkey;
  if (itemkey != null) {
    var items;
    final existingData = items.firstwhere((element) => element["key"] == itemkey);
    name_controller.text = existingData["name"];
    quantity_controller.text = existingData["quatity"];
  }
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: 15,
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: name_controller,
              decoration: InputDecoration(hintText: "Name"),
            ),TextField(
              controller: name_controller,
              decoration: InputDecoration(hintText: "quantity"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: ()async{
              if (itemkey== null){
                additem({
                  "name": name_controller.text,
                "quantity": quantity_controller.text
                }
                );
              }if (itemkey !=null){
                updateitem(itemkey,{
                  "name": name_controller.text.trim(),
                  "quantity": quantity_controller.text.trim()
                });
              }name_controller.text="";
              quantity_controller.text="";
              Navigator.of(context).pop();
            }, child: Text(itemkey== null ? "Create New":"update item"))
          ],
        ),
      );
    },
  );
}

Future<void>additem(Map<String, dynamic> newitem) async{
  await box.add(newitem);
  refreshItem();
}


void updateitem(itemkey, Map<String, String> map) {}
void deletitem(current_item) {}