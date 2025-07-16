-- 开始前先领取第一个任务, 确认各插件配置
-- /ice only 508
comsic = 1
debug = true -- 调试模式
craft_time = 50 -- 50秒锻造时间

while comsic == 1 do 
    -- 48233 = 任务制作材料 宇宙货箱
    -- 45961 = 任务用钓饵 淡水万能机械臂
    while Inventory.GetItemCount(48233) ~= 20 or Inventory.GetItemCount(45961) ~= 999 do
		if debug == true then
			yield("/echo 等待目标任务")
		end
        yield("/wait 3")
    end

	-- Fish
	--yield("/equipjob ".."捕鱼人")
	--yield("/ahpreset A2联合")
	yield("/wait 3")
	yield("/ahstart")

	-- 45917 = 任务水产品 重无结构陨铁
	while Inventory.GetItemCount(45917) < 14 do
		if debug == true then
			yield("/echo 任务水产品不足")
		end
		yield("/wait 3")
		if Svc.Condition[1] == true then
			if debug == true then
				yield("/echo 开始钓鱼")
			end
			yield("/ahstart")
		end
	end

	while Svc.Condition[1] == false do
		if debug == true then
			yield("/echo 钓鱼状态中")
		end
		yield("/wait 3")
	end
	
	yield("/echo 钓鱼完成，开始制作")
	yield("/wait 3")
	
	-- Craft
	yield("/ice stop")
	yield("/wait 1")
	yield("/equipjob ".."锻铁匠")
	yield("/wait 2")
	yield("/send N")
	yield("/wait 2")
	yield("/artisan endurance start")
	--银牌+宏时间(冗余)
	yield("/wait "..craft_time)
	yield("/wait "..craft_time)
	yield("/artisan endurance stop")
	yield("/send ESCAPE")
	yield("/wait 3")
	yield("/equipjob ".."捕鱼人")
	yield("/wait 3")
	yield("/ice start")
    -- 结束后重新开始
	yield("/wait 3")
	yield("/echo 任务完成，重新开始")
end
