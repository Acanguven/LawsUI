require "LawsUI"

ui = LawsUi()

function OnLoad()
	Stats = ui:addPage()
	
	StatsBar = Stats:addSprite(LIB_PATH .. "/ProStats/images/stats-ui.png","StatsBar")
	StatsBar:setPosition((GetGame().WINDOW_W/2) - (StatsBar.width/2),0)
	StatsBar:setLayer(2)
	
	ExtendButton = Stats:addSprite(LIB_PATH .. "/ProStats/images/extendButton.png","StatsBar")
	ExtendButton:setScale(50,50)
	ExtendButton:setLayer(1)
	ExtendButton:setPosition((GetGame().WINDOW_W/2) - (ExtendButton.width/2),40)
	ExtendButton:On("mouseup", 
	function() 
		if not menuExtended then
			menuExtended = true
			ExtendButton:setScale(100,100)
			ExtendButton:setPosition((GetGame().WINDOW_W/2) - (ExtendButton.width/2),50)
		else
			menuExtended = false
			ExtendButton:setScale(50,50)
			ExtendButton:setPosition((GetGame().WINDOW_W/2) - (ExtendButton.width/2),40)
		end
	end)

end

function OnWndMsg(msg,wParam)
	ui:eventChecker(msg, wParam)
end

function OnDraw()
	ui:drawManager()
end
