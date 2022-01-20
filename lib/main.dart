import 'package:flutter/material.dart';
import 'package:view_switching/image_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _crossAxisCount = 2;

  double _aspectRatio = 1.5;

  ViewType _viewType = ViewType.grid;

  List<ImageData> itemList = getImageDataList();

  static List<ImageData> getImageDataList() {
    return [
      ImageData(
          'https://images.unsplash.com/photo-1467733037332-340204cb229b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=875&q=80',
          'Shinny Sunflower',
          '01-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1432316212565-b26e2a381ada?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=875&q=80',
          'Awesome Sunflower',
          '01-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1541214240140-980ad45caeb1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'Amazing Nature',
          '02-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1517241080758-95a42c519c1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'Bright Sunflower',
          '02-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1437275537121-331a0457c8d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'Pink Flowers',
          '03-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
          'Clear Nature',
          '03-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1421930866250-aa0594cea05c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80',
          'Fresh Nature',
          '04-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1481595357459-84468f6eeaac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'Flying Insect',
          '04-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1536693308398-d4c2caf33e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'Natures Gift',
          '05-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1545560928-ba585ef97070?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
          'Lilly Garden',
          '05-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1436891436013-5965265af5fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'Fresh Lilly',
          '06-Jan-2022'),
      ImageData(
          'https://images.unsplash.com/photo-1560738851-47a1bd7288a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          'White Lilly',
          '06-Jan-2022')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("View Switch/Toggle Example"),
          actions: [
            IconButton(
              icon: Icon(
                  _viewType == ViewType.list ? Icons.grid_on : Icons.view_list),
              onPressed: () {
                if (_viewType == ViewType.list) {
                  _crossAxisCount = 2;
                  _aspectRatio = 1.5;
                  _viewType = ViewType.grid;
                } else {
                  _crossAxisCount = 1;
                  _aspectRatio = 5;
                  _viewType = ViewType.list;
                }
                setState(() {});
              },
            )
          ],
        ),
        body: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Theme.of(context).canvasColor,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Container(
                margin: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: _crossAxisCount,
                  childAspectRatio: _aspectRatio,
                  children: itemList.map((ImageData imageData) {
                    return getGridItem(imageData);
                  }).toList(),
                ))));
  }

  GridTile getGridItem(ImageData imageData) {
    return GridTile(
      child: (_viewType == ViewType.list)
          ? Container(
              margin: const EdgeInsets.all(5),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageData.path,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        imageData.title,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        imageData.date,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageData.path,
                        ))),
                Text(
                  imageData.title,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
    );
  }
}

enum ViewType { grid, list }
