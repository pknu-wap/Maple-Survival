--Properties--

number NONE = 0--매칭 중이 아닙니다
number WAIT = 1--매칭 대기 중 입니다
number FINAL_READY = 2--매칭되어 최종 대기 중입니다


--Methods--

[Default]
string ToString(number state)
{
	if state == self.NONE then
		return "NONE"
	end
	if state == self.WAIT then
		return "WAIT"
	end
	if state == self.FINAL_READY then
		return "FINAL_READY"
	end
}


--Events--

