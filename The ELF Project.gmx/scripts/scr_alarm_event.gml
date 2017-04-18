///scr_alarm_event(alarm);
var _alarm_ = argument0;

if alarms[_alarm_,1] != -1{
    if scr_alarm(_alarm_,alarms[_alarm_,1]){
        alarms[_alarm_,1] = -1;
        return true;
    }
}
