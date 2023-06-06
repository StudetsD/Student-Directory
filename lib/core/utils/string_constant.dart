class StringConstants {
  static List<Group> listOfGroups = [
    //Group(name: '----------1 КУРС----------', type: "divider"),
    Group(name: 'ММБ-201-О-04', type: "group"),
    Group(name: 'ММБ-202-О-04', type: "group"),
    Group(name: 'ММБ-203-О-04', type: "group"),
    Group(name: 'МББ-201-О-01', type: "group"),
    Group(name: 'МБС-201-О-01', type: "group"),
    Group(name: 'МБС-202-О-01', type: "group"),
    Group(name: 'МИБ-201-О-01', type: "group"),
    Group(name: 'МПБ-201-О-01', type: "group"),

    //Group(name: '----------2 КУРС----------', type: "divider"),
    Group(name: 'ММБ-102-О-03', type: "group"),
    Group(name: 'ММБ-103-О-03', type: "group"),
    Group(name: 'ММБ-104-О-03', type: "group"),
    Group(name: 'МББ-101-О-01', type: "group"),
    Group(name: 'МБС-101-О-01', type: "group"),
    Group(name: 'МБС-102-О-01', type: "group"),
    Group(name: 'МКБ-101-О-01', type: "group"),
    Group(name: 'МИБ-101-О-01', type: "group"),
    Group(name: 'МПБ-101-О-01', type: "group"),

    //Group(name: '----------3 КУРС----------', type: "divider"),
    Group(name: 'ММБ-002-О-01', type: "group"),
    Group(name: 'ММБ-003-О-02', type: "group"),
    Group(name: 'ММБ-004-О-02', type: "group"),
    Group(name: 'МББ-001-О-01', type: "group"),
    Group(name: 'МБС-001-О-01', type: "group"),
    Group(name: 'МБС-002-О-01', type: "group"),
    Group(name: 'МКБ-001-О-01', type: "group"),
    Group(name: 'МИБ-001-О-01', type: "group"),
    Group(name: 'МПБ-001-О-01', type: "group"),

    //Group(name: '----------4 КУРС----------', type: "divider"),
    Group(name: 'ММБ-902-О-03', type: "group"),
    Group(name: 'ММБ-903-О-03', type: "group"),
    Group(name: 'ММБ-904-О-03', type: "group"),
    Group(name: 'МББ-901-О-01', type: "group"),
    Group(name: 'МБС-901-О-01', type: "group"),
    Group(name: 'МКБ-901-О-01', type: "group"),
    Group(name: 'МИБ-901-О-01', type: "group"),
    Group(name: 'МПБ-901-О-01', type: "group"),

    //Group(name: '----------5 КУРС----------', type: "divider"),
    Group(name: 'МБС-801-О-01', type: "group"),

    //Group(name: '--------Магистратура------', type: "divider"),
    Group(name: 'МИМ-201-О-01', type: "group"),
  ];

  static Map<String, String> listOfCodeGroups = {
    'ММБ-201-О-04': "1163",
    'ММБ-202-О-04': "1154",
    'ММБ-203-О-04': "1177",
    'ММБ-102-О-03': "1184",
    'ММБ-103-О-03': "1145",
    'ММБ-104-О-03': "1189",
    'ММБ-002-О-01': "1148",
    'ММБ-003-О-02': "1176",
    'ММБ-004-О-02': "1181",
    'ММБ-902-О-03': "1151",
    'ММБ-903-О-03': "1169",
    'ММБ-904-О-03': "1167",
    'МИМ-201-О-01': "3802",
    'МББ-201-О-01': "2592",
    'МББ-101-О-01': "2618",
    'МББ-001-О-01': "2600",
    'МББ-901-О-01': "2653",
    'МБС-201-О-01': "2608",
    'МБС-101-О-01': "2606",
    'МБС-001-О-01': "2595",
    'МБС-901-О-01': "2590",
    'МБС-801-О-01': "2668",
    'МБС-202-О-01': "2629",
    'МБС-102-О-01': "2633",
    'МБС-002-О-01': "2598",
    'МИБ-201-О-01': "2620",
    'МИБ-101-О-01': "2623",
    'МИБ-001-О-01': "2617",
    'МИБ-901-О-01': "2664",
    'МПБ-201-О-01': "2624",
    'МПБ-101-О-01': "2638",
    'МПБ-001-О-01': "2612",
    'МПБ-901-О-01': "2666",
    'МКБ-101-О-01': "2604",
    'МКБ-001-О-01': "2645",
    'МКБ-901-О-01': "2681",
  };
}

class Group {
  String name;
  String type;

  Group({required this.name, required this.type});
}