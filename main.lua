-----------------------------------------------------------------------------------------
-- Taisei Scot
-- The program displays an image that moves acoss the screen. 
--
-----------------------------------------------------------------------------------------

--Hide status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3

--Background images, width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

--character image, width and heigt
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--beetleship is transpaent
beetleship.alpha = 0


--Initial x and y fo beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--Event listener
--The function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--adds scroll speed
	beetleship.x = beetleship.x + scrollSpeed
	--Fades in
	beetleship.alpha = beetleship.alpha + 0.01
end

--MoveShip is called
Runtime:addEventListener("enterFrame", MoveShip)