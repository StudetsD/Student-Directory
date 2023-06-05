import '../features/chose_group/chose_group.dart';

final routes = {
  '/': (context) => const ChoseGroupScreen(),
  '/menu': (context) => const MenuPage(""),
  '/schedule': (context) => const ScheduleWebPage(),
  '/lessons': (context) => const ListOfLessons(),
  '/students': (context) => const ListOfGroup(),
  '/teachers': (context) => const ListOfTeachers(),
};