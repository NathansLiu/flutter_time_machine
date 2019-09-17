<!--
 * @Description: 
 * @Author: Nathan暗黑时代
 * @Date: 2019-09-17 13:55:45
 -->
# time_machine_flutter_app 神奇的时光机

这是一台神奇的时光机。以今天为出发点，选择你要回到那天、周、月、年，就可以‘嗖’的一下消失并在另一个时空出现  ｂ（￣▽￣）ｄ

## 使用手册

很简单。只需要填一下，按一下，就可以‘嗖’~

如果你想回到那一天
```
TimeMachineUtil.getTimestampLatest(true, 3));//返回的是时间戳  未来第三天
TimeMachineUtil.getTimestampLatest(true, -3));//返回的是时间戳  过去的第三天

DateUtil.formatDate(
              DateTime.fromMillisecondsSinceEpoch(
                  TimeMachineUtil.getTimestampLatest(true, 3)),
              format: 'yyyy-MM-dd'); //未来第三天 转成时间格式
```

如果你想回到那一周
```
TimeMachineUtil.getWeeksDate(0); //本周
TimeMachineUtil.getWeeksDate(1); //下一周
TimeMachineUtil.getWeeksDate(-8); //之前的第8周
TimeMachineUtil.getWeeksDate(10); //未来的第10周

//打印的信息
I/flutter (21876): 某个周的周一和周日：{monDay: 2019-09-22, sunDay: 2019-09-16, monDayStamp: 1568563200000, sunDayStamp: 1569167999000}
I/flutter (21876): 某个周的周一和周日：{monDay: 2019-09-29, sunDay: 2019-09-23, monDayStamp: 1569168000000, sunDayStamp: 1569772799000}
I/flutter (21876): 某个周的周一和周日：{monDay: 2019-07-28, sunDay: 2019-07-22, monDayStamp: 1563724800000, sunDayStamp: 1564329599000}
I/flutter (21876): 某个周的周一和周日：{monDay: 2019-12-01, sunDay: 2019-11-25, monDayStamp: 1574611200000, sunDayStamp: 1575215999000}


```

如果你想回到那一月
```
TimeMachineUtil.getMonthDate(1); //下个月
TimeMachineUtil.getMonthDate(0); //这个月
TimeMachineUtil.getMonthDate(4); //未来第四个月
TimeMachineUtil.getMonthDate(-6); //过去的第六个月

//打印的信息
I/flutter (21876): 过去未来某个月初月末：{startDate: 2019-10-01, endDate: 2019-10-31, startDateStamp: 1569859200000, endDateStamp: 1572537599000}
I/flutter (21876): 过去未来某个月初月末：{startDate: 2019-09-01, endDate: 2019-09-30, startDateStamp: 1567267200000, endDateStamp: 1569859199000}
I/flutter (21876): 过去未来某个月初月末：{startDate: 2020-01-01, endDate: 2020-01-31, startDateStamp: 1577808000000, endDateStamp: 1580486399000}
I/flutter (21876): 过去未来某个月初月末：{startDate: 2019-03-01, endDate: 2019-03-31, startDateStamp: 1551369600000, endDateStamp: 1554047999000}


```

如果你想回到那一年
```
TimeMachineUtil.getStartEndYearDate(6); //未来第6年
TimeMachineUtil.getStartEndYearDate(-6); //过去第6年
TimeMachineUtil.getStartEndYearDate(0); //今年

//打印信息
I/flutter (21876): 某一年初和年末：{startTime: 2025-01-01, endTime: 2025-12-31, startStamp: 1735660800000, endStamp: 1767196799000}
I/flutter (21876): 某一年初和年末：{startTime: 2013-01-01, endTime: 2013-12-31, startStamp: 1356969600000, endStamp: 1388505599000}
I/flutter (21876): 某一年初和年末：{startTime: 2019-01-01, endTime: 2019-12-31, startStamp: 1546272000000, endStamp: 1577807999000}

```


## 时光机的内部结构

注意：
    1、时间戳(1546272000000)可能需要 / 1000 看后台需求。
    2、所有的格式时间(2019-12-31)都没有带时分秒，但时间戳转时间格式是有的，如果你需要可以在yyyy-MM-dd的地方改为 yyyy-MM-dd HH:mm:ss

    




