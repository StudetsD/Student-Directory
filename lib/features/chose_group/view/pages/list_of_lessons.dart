import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';
import 'package:applicate/widgets/cards/card.dart';

class StartList extends StatelessWidget {
  const StartList({super.key});

  @override
  Widget build(BuildContext context) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;
    List<Items> items = StringConstants.listOfItemsGroups[group] as List<Items>;
    return ListOfLessons(items: items, group: group);
  }
}

class ListOfLessons extends StatefulWidget {

  ListOfLessons({super.key, required this.items, required this.group});
  final List<Items> items;
  final String group;

  @override
  State<ListOfLessons> createState() => _ListOfLessonsState();
}

class _ListOfLessonsState extends State<ListOfLessons> {

  var _filteredLessons = <Items>[];

  final _searchController = TextEditingController();

  void _searchLessons(){
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredLessons = widget.items.where((Items item) {
        return item.name.toLowerCase().contains(query);
      }).toList();
    }
    else {
      _filteredLessons = widget.items;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredLessons = widget.items;
    _searchController.addListener(_searchLessons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 60, bottom: 20),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/menu', arguments: widget.group);
                        },
                      ),
                      Text(
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
                    ],
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
                for(var i = 0; i < _filteredLessons.length; i++) Card_(item: _filteredLessons[i]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}