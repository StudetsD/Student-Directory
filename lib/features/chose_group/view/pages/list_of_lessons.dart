import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';
import 'package:applicate/widgets/cards/card_of_item.dart';

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

  const ListOfLessons({super.key, required this.items, required this.group});
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
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 40, bottom: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: AppIconStyle.iconTopBack,
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu', arguments: widget.group);
                    },
                  ),
                  Text(
                    "Предметы",
                    textAlign: TextAlign.center,
                    style: AppStyle.textTopStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                style: TextStyle(color: ColorConstant.chosePageTextColor),
                controller: _searchController,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    color: ColorConstant.chosePageTextColor,
                  ),
                  filled: true,
                  fillColor: ColorConstant.chosePageFon,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: " Поиск",
                  hintStyle: AppStyle.txtRobotoRomanCondensedMedium17,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                children: <Widget>[
                  for(var i = 0; i < _filteredLessons.length; i++) CardOfItem(item: _filteredLessons[i]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}