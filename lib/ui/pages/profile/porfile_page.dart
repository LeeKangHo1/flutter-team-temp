import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:table_calendar/table_calendar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

// 차트 데이터 클래스
class ChartData {
  final String x;
  final double y;

  ChartData(this.x, this.y);
}

class _ProfilePageState extends State<ProfilePage> {
  // 차트 데이터
  final List<ChartData> chartData = [
    ChartData('월', 3),
    ChartData('화', 5),
    ChartData('수', 8),
    ChartData('목', 2),
    ChartData('금', 7),
    ChartData('토', 4),
    ChartData('일', 6),
  ];

  // 달력
  late DateTime _focusedDay; // 현재 포커스된 날짜
  late DateTime _firstDay; // 캘린더에 표시할 해당 월의 첫날
  late DateTime _lastDay; // 캘린더에 표시할 해당 월의 마지막 날

  @override
  void initState() {
    super.initState();

    // 현재 날짜 기준으로 초기화
    _focusedDay = DateTime.now();
    _firstDay = DateTime(_focusedDay.year, _focusedDay.month, 1);
    _lastDay = DateTime(_focusedDay.year, _focusedDay.month + 1, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0), // 전체 화면 여백 추가
        child: ListView(
          children: [
            // 첫번째 - 사용자 정보
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "user1234 | user1234@example.com",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "1일 동안 계획을 지켰습니다!!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // 두번째 - 작업 개요
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "작업 개요",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // 완료된 작업
                      Expanded(
                        child: Container(
                          height: 100,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: Color(0xfff9ffff),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "완료된 작업",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 완료되지 않은 작업
                      Expanded(
                        child: Container(
                          height: 100,
                          margin: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            color: Color(0xfff9ffff),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "완료되지 않은 작업",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // 세번째 - 그래프
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SfCartesianChart(
                    primaryXAxis: CategoryAxis(), // x축 카테고리 설정
                    primaryYAxis: NumericAxis(
                      minimum: 0, // y축 최소값
                      maximum: 8, // y축 최대값
                      interval: 2, // y축 간격
                    ),
                    title: ChartTitle(text: '일일 작업 완료'), // 그래프 제목
                    series: <ChartSeries>[
                      ColumnSeries<ChartData, String>(
                        dataSource: chartData,
                        // 그래프 데이터 연결
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        color: Colors.blue,
                        animationDuration: 0, // 그래프 로드 시, 애니메이션 효과 제거
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SizedBox(height: 16),
            // 네번째 - 달력
            Container(
              height: 400, // 달력 크기 지정
              padding: EdgeInsets.all(16.0), // 여백 추가
              decoration: BoxDecoration(
                color: Colors.grey.shade100, // 배경색 추가
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: TableCalendar(
                firstDay: _firstDay,
                lastDay: _lastDay,
                focusedDay: _focusedDay,
                // headerVisible: false, // 년도 표시
                // daysOfWeekVisible: false, // 요일 표시
                calendarStyle: CalendarStyle(
                  outsideDaysVisible: false, // 전월, 다음 월 날짜 숨기기
                  // defaultDecoration: BoxDecoration( // 날짜 박스 하나씩
                  //   // color: Colors.grey.shade200, // 기본 날짜 박스 배경색
                  //   shape: BoxShape.rectangle, // 네모난 형태
                  //   borderRadius: BorderRadius.circular(8.0),
                  // ),
                  // todayDecoration: BoxDecoration(), // 오늘 날짜 표시 제거
                  selectedDecoration: BoxDecoration(
                    color: Colors.blue, // 선택된 날짜 배경색
                    shape: BoxShape.rectangle, // 네모난 형태
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay; // 선택된 날짜로 포커스 변경
                  });
                },
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, day, events) {
                    if (events.contains('highlighted')) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.blue, // 1일부터 20일까지의 배경색
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '${day.day}',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      );
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            // 그리드 - 퍼센트, 완료 개수
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time, color: Colors.blue, size: 30),
                    Text(
                      "88%",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle, color: Colors.blue, size: 30),
                    Text(
                      "22",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
