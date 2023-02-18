Math = {}
Math.clamp01 = function(value)
    if value < 0 then
        return 0
    end
    if value > 1 then
        return 1
    end
    return value
end