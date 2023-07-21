import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';
import 'package:applicate/widgets/cards/card.dart';
class ListOfLessons extends StatefulWidget {

  const ListOfLessons({super.key});

  @override
  State<ListOfLessons> createState() => _ListOfLessonsState();
}

class _ListOfLessonsState extends State<ListOfLessons> {

  var _filteredLessons = <Items>[];

  final _searchController = TextEditingController();

  /*void _searchLessons(){
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredLessons = items.where((Items item) {
        return item.name.contains(query);
      }).toList as List<Items>;
    }
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_searchLessons);
  }*/

  @override
  Widget build(BuildContext context) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;
    var items = StringConstants.listOfItemsGroups[group];
    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 60, left: 28, bottom: 20),
                child: Text(
                  "Предметы",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.colorText,
                    fontSize: 25,
                    fontFamily: 'RobotoBold',
                    fontWeight: FontWeight.w900,
                    shadows: const [
                      Shadow(
                        blurRadius: 3.0,
                        color: Colors.black26,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search_rounded,),
                    filled: true,
                    fillColor: Colors.white70.withAlpha(100),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Search",
                  ),
                ),
              ),
              for(var i = 0; i < items!.length; i++) Card_(item: items[i]),
            ],
          ),
        ),
      ),
    );
  }
}