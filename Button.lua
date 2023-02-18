Button = {}
Button.new = function(x, y, w, h)
    local o = {}
    
    -- Field
    o.lastPressed = false
    o.isDown = false
    o.isPressed = false
    o.isUp = false
    
    -- Method
    o.update = function()
        local b = input.getBool(1)
        local inputX = input.getNumber(3)
        local inputY = input.getNumber(4)
        
        if inputX >= x and inputX <= (x + w) and inputY >= y and inputY <= (y + h) then
        
            -- isDown
            if not o.lastPressed and b then
                o.isDown = true
            else
                o.isDown = false
            end
            
            -- isPressed
            if b then
                o.isPressed = true
            else
                o.isPressed = false
            end
            
            -- isUp
            if o.lastPressed and not b then
                o.isUp = true
            else
                o.isUp = false
            end
        
        end
        
        o.lastPressed = b
    end
    
    o.draw = function()
        screen.drawRect(x, y, w, h)
    end
    
    return o
end