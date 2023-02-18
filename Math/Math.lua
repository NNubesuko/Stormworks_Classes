Math = {}
Math.sin = function(f)
    return math.sin(f)
end

Math.cos = function(f)
    return math.cos(f)
end

Math.tan = function(f)
    return math.tan(f)
end

Math.asin = function(f)
    return math.asin(f)
end

Math.acos = function(f)
    return math.acos(f)
end

Math.atan = function(f)
    return math.atan(f)
end

Math.atan2 = function(y, x)
    return math.atan(y, x)
end

Math.sinh = function(x)
    return (math.exp(x) - math.exp(-x)) / 2
end

Math.cosh = function(x)
    return (math.exp(x) + math.exp(-x)) / 2
end

Math.tanh = function(x)
    return (math.exp(x) - math.exp(-x)) / (math.exp(x) + math.exp(-x))
end

Math.sqrt = function(f)
    return math.sqrt(f)
end

Math.abs = function(f)
    return math.abs(f)
end

Math.min = function(a, b)
    return math.min(a, b)
end

Math.max = function(a, b)
    return math.max(a, b)
end

Math.pow = function(f, p)
    return f ^ p
end

Math.exp = function(p)
    return math.exp(p)
end

Math.ceil = function(f)
    return math.ceil(f)
end

Math.floor = function(f)
    return math.floor(f)
end

Math.sign = function(f)
    if f >= 0 then
        return 1
    else
        return -1
    end
end

Math.clamp = function(v, min, max)
    if v < min then
        return min
    elseif v > max then
        return max
    end
    return v
end

Math.clamp01 = function(v)
    if v < 0 then
        return 0
    elseif v > 1 then
        return 1
    end
    return v
end

Math.lerp = function(a, b, t)
    return a + (b - 1) * Math.clamp01(t)
end

Math.lerpUnclamped = function(a, b, t)
    return a + (b - a) * t
end