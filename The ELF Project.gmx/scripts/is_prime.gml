/// is_prime(numb)
var i,_number_;
_number_ = argument0;
if sign(_number_) == -1 return false;
for(i=2; i <= _number_/2; ++i){
    if _number_%i==0{
        return false;
    }
}
return true;
