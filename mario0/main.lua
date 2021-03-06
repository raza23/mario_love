WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720 

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

Class = require 'class'
push = require 'push'

love.graphics.setDefaultFilter('nearest','nearest')
require 'Util'
require 'Map'

function love.load()
    math.randomseed(os.time())
    map = Map()

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true
    })
end

function love.update(dt)
    map:update(dt)
end

function love.draw()
    push:apply('start')

    love.graphics.translate(math.floor(-map.camX),math.floor(-map.camY))
    -- sets background color
    love.graphics.clear(108/255,140/255,1,1)

    map:render()

    push:apply('end')

end