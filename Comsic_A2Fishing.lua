-- 开始前先领取第一个任务
comsic = 1

while comsic == 1 do 

	-- Fish
	yield("/equipjob ".."捕鱼人")
	yield("/ahpreset A2联合")
	yield("/wait 3")
	yield("/ahstart")
    -- 防止GP不够不抛竿导致跳过等待
	yield("/wait 120")
	
	while Svc.Condition[1] == false do
		--yield("/echo Still Fishing")
		yield("/wait 3")
	end
	
	yield("/echo Ending Fishing")
	yield("/wait 5")
	
	-- Craft
	yield("/ice stop")
	yield("/echo swapping to ---> ".."锻铁匠")
	yield("/equipjob ".."锻铁匠")
	yield("/wait 2")
	yield("/send N")
	yield("/wait 2")
	yield("/artisan endurance start")
	--银牌+宏时间(冗余)
	yield("/wait 50")
	yield("/wait 50")
	yield("/send ESCAPE")
	yield("/wait 3")
	yield("/equipjob ".."捕鱼人")
	yield("/wait 5")
	yield("/ice start")
    -- 结束后重新开始
	yield("/wait 30")

end
