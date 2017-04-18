/// scr_alarm(alarm, interval)

var _alarm_ = argument0;
var _timer_ = argument1;

if alarms[_alarm_,0] < _timer_{
    alarms[_alarm_,0] += 1;
    return false;
}else{
    alarms[_alarm_,0] = -1;
    return true;
}
