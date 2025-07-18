-- 调试日志函数
function debugLog(message)
	if debug == true then
		yield("/echo " .. message)
	end
end

-- 检查并切换到指定职业的函数
function ensureJob(targetJob)
	yield("/equipjob "..targetJob)
	yield("/wait 1")
	local job = Player.Job
	local name = job.Name
	while name ~= targetJob do
		yield("/equipjob "..targetJob)
		yield("/wait 1")
		job = Player.Job
		name = job.Name
	end
end

-- 开始前先领取第一个任务, 确认各插件配置
-- /ice only 508
comsic = 0
debug = false -- 调试模式
yield("/ahpreset A2联合")

while comsic == 1 do 
    -- 48233 = 任务制作材料 宇宙货箱
    -- 45961 = 任务用钓饵 淡水万能机械臂
    while Inventory.GetItemCount(48233) ~= 20 or Inventory.GetItemCount(45961) ~= 999 do
		debugLog("等待目标任务")
		yield("/wait 3")
    end

	-- Fish
	ensureJob("捕鱼人")
	yield("/wait 3")

	-- 45917 = 任务水产品 重无结构陨铁
	while Inventory.GetItemCount(45917) < 14 do
		if Svc.Condition[1] == true then
			debugLog("开始钓鱼")
			yield("/ahstart")
		end
		debugLog("任务水产品不足")
		yield("/wait 3")
	end

	while Svc.Condition[1] == false do
		debugLog("钓鱼状态中")
		yield("/wait 3")
	end
	
	yield("/echo 钓鱼完成，开始制作")
	yield("/wait 1")
	
	-- Craft
	yield("/ice stop")
	ensureJob("锻铁匠")
	yield("/wait 1")
	yield("/send N")
	yield("/wait 1")
	yield("/artisan endurance start")
	-- 46973 = 任务成品 无结构陨铁锭
	while Inventory.GetHqItemCount(46973) < 2 do
		debugLog("任务成品不足")
		yield("/wait 3")
	end

	yield("/wait 3")
	yield("/send ESCAPE")
	yield("/wait 3")
	ensureJob("捕鱼人")
	yield("/wait 1")
	yield("/ice start")
	-- 结束后重新开始
	yield("/wait 3")
	yield("/echo 任务完成，重新开始")
end
