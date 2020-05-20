Player = Class{}

local MOVE_SPEED = 80

function Player:init(map)
    self.width = 16
    self.height = 20
                 
    self.x = map.tileWidth * 10 
    self.y = map.tileHeight * (map.mapHeight /2 -1 ) - self.height 


    self.texture = love.graphics.newImage('graphics/blue_alien.png')
    self.frames = generateQuads(self.texture,16,20)
end


function Player:update(dt)
    -- if love.keyboard.isDown('w') then
    --     self.camY = math.max(0,math.floor(self.camY + (-SCROLL_SPEED * dt)))

    if love.keyboard.isDown('a') then
        -- self.camX = math.max(0,math.floor(self.camX + (-SCROLL_SPEED * dt)))
        self.x = self.x - MOVE_SPEED * dt
    
    -- elseif love.keyboard.isDown('s') then
    --     self.camY = math.min(self.mapHeightPixels - VIRTUAL_HEIGHT,math.floor(self.camY + (SCROLL_SPEED * dt)))
    
    elseif love.keyboard.isDown('d') then
        -- self.camX = math.min(self.mapWidthPixels-VIRTUAL_WIDTH,math.floor(self.camX + (SCROLL_SPEED * dt)))
        self.x = self.x + MOVE_SPEED * dt

    end
    

end



function Player:render()
    love.graphics.draw(self.texture,self.frames[4],self.x,self.y)
end