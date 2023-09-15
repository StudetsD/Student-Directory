import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/app_export.dart';

class ChoseGroupScreen extends StatefulWidget{
  const ChoseGroupScreen({super.key});

  @override
  State<ChoseGroupScreen> createState() => _ChoseGroupScreenState();
}

class _ChoseGroupScreenState extends State<ChoseGroupScreen> {

  final List<Group> listOfGroups = StringConstants.listOfGroups;
  var _filteredGroups = <Group>[];

  final _searchController = TextEditingController();

  void _searchLessons(){
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredGroups = listOfGroups.where((Group item) {
        return item.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
    else {
      _filteredGroups = listOfGroups;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredGroups = listOfGroups;
    _searchController.addListener(_searchLessons);
  }

  @override
  Widget build(BuildContext context) {
    final int countOfGroup = _filteredGroups.length;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 40, bottom: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: AppIconStyle.iconTopBack,
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  Text(
                    "Выбор группы",
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
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorConstant.menuBackgroundColor,
                        width: 1.0
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorConstant.choseGroupColorBorderSearch,
                        width: 1.0
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: " Поиск",
                  hintStyle: AppStyle.txtRobotoRomanCondensedMedium17,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 50),
                child: ListView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  children: <Widget>[
                    for(var i = 0; i < countOfGroup;i ++) ButtonGroup(group: _filteredGroups[i].name,),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class ButtonGroup extends StatelessWidget {
  ButtonGroup({
    super.key,
    required this.group,
  });

  static const tempGroup = 'group';
  String group;

  Future _setGroup(String group) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(tempGroup, group);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 50,
      decoration: BoxDecoration(
        color: ColorConstant.choseGroupColorButton,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            group,
            style: TextStyle(
              color: ColorConstant.choseGroupColorText,
              fontSize: 17,
              fontFamily: 'RobotoBlack',
              fontWeight: FontWeight.w700
            ),
          ),
        ),
        onPressed: () async{
          await _setGroup(group);
          Navigator.pushNamed(context, '/menu', arguments: group);
        },
      ),
    );
  }
}