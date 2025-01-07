import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:planit/ui/memo/memo_page.dart';
import 'package:planit/ui/pages/auth/change_password_page/change_password_page.dart';
import 'package:planit/ui/pages/auth/find_id_page/find_id_page.dart';
import 'package:planit/ui/pages/auth/find_password_page/find_password_page.dart';
import 'package:planit/ui/pages/auth/login_page/login_page.dart';
import 'package:planit/ui/pages/auth/signup_page/signup_page.dart';
import 'package:planit/ui/pages/calendar/calendar_page.dart';
import 'package:planit/ui/pages/dialog/dialog_page.dart';
import 'package:planit/ui/pages/main/main_page.dart';
import 'package:planit/ui/pages/profile/porfile_page.dart';
import 'package:planit/ui/pages/task/task_page.dart';

void main() async {
  // 한국어로 바꾸는 라이브러리 설정 >> 시작전에 바꾸고 가는 방식인듯
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko_KR', null); // 한국어 날짜 형식 초기화
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 한국어로 바꾸기 추가설정
      locale: Locale('ko', 'KR'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ko', 'KR'), // 한국어
      ],
      debugShowCheckedModeBanner: false,
      // home: TestPage(),
      home: MainPage(),
      routes: {
        "/task": (context) => TaskPage(),
        "/memo": (context) => MemoPage(),
        "/dialog": (context) => DialogPage(),
        "/calendar": (context) => CalendarPage(),
        "/profile": (context) => ProfilePage(),
        "/signup_page": (context) => SignupPage(),
        "/login_page": (context) => LoginPage(),
        "/find-id": (context) => FindIdPage(),
        "/find-password": (context) => FindPasswordPage(),
        "/change-password": (context) => ChangePasswordPage(),
      },
    );
  }
}
