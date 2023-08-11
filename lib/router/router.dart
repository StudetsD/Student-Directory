import '../features/chose_group/chose_group.dart';

final routes = {
  '/': (context) => const StartScreen(),
  '/chose': (context) => const ChoseGroupScreen(),
  '/menu': (context) => const MenuPage(),
  '/schedule': (context) => const ScheduleWebPage(),
  '/lessons': (context) => const StartList(),
  '/teachers': (context) => const ListOfTeachers(),
  '/students': (context) => const ListOfGroup(),
};