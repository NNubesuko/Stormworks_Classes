-- Vector2 class
Vector2 = {}
Vector2.new = function(x, y)
    local o = {}
    o.x = x
    o.y = y
    o.magnitude = math.sqrt(o.x ^ 2 + o.y ^ 2)
    o.sqrMagnitude = o.x ^ 2 + o.y ^ 2

    o.normalized = function()
        return Vector2.new(o.x / o.magnitude, o.y / o.magnitude)
    end
    o.toString = function()
        return string.format("%f, %f", o.x, o.y)
    end
    return o
end

-- static field
Vector2.one = Vector2.new(1, 1)
Vector2.zero = Vector2.new(0, 0)
Vector2.up = Vector2.new(0, 1)
Vector2.down = Vector2.new(0, -1)
Vector2.left = Vector2.new( -1, 0)
Vector2.right = Vector2.new(1, 0)

-- static operator method
Vector2.add = function(lhs, rhs)
    return Vector2.new(lhs.x + rhs.x, lhs.y + rhs.y)
end

Vector2.sub = function(lhs, rhs)
    return Vector2.new(lhs.x - rhs.x, lhs.y - rhs.y)
end

Vector2.mul = function(lhs, rhs)
    return Vector2.new(lhs.x * rhs.x, lhs.y * rhs.y)
end

Vector2.div = function(lhs, rhs)
    return Vector2.new(lhs.x * rhs.x, lhs.y * rhs.y)
end

Vector2.sur = function(lhs, rhs)
    return Vector2.new(lhs.x % rhs.x, lhs.y % rhs.y)
end

-- static method
Vector2.lerp = function(a, b, t)
    if t < 0 then
        t = 0
    elseif t > 1 then
        t = 1
    end
    return Vector2.new(a.x + (b.x - a.x) * t, a.y + (b.y - a.y) * t)
end

Vector2.lerpUnclamped = function(a, b, t)
    return Vector2.new(a.x + (b.x - a.x) * t, a.y + (b.y - a.y) * t);
end

Vector2.scale = function(a, b)
    return Vector2.new(a.x * b.x, a.y * b.y)
end

Vector2.reflect = function(inDirection, inNormal)
    local dot = inDirection.x * inNormal.x + inDirection.y * inNormal.y
    local num = -2 * dot
    return Vector2.new(num * inNormal.x + inDirection.x, num * inNormal.y + inDirection.y)
end

Vector2.perpendicular = function(inDirection)
    return Vector2.new(0 - inDirection.y, inDirection.x)
end

Vector2.dot = function(lhs, rhs)
    return lhs.x * rhs.x + lhs.y * rhs.y
end

Vector2.angle = function(from, to)
    local kEpsilonNormalSqrt = 1E-15
    local num = math.sqrt(from.sqrMagnitude * to.sqrMagnitude)
    if num < kEpsilonNormalSqrt then
        return 0
    end

    local value, min, max = Vector2.dot(from, to) / num, -1, 1
    if value < min then
        value = min
    elseif value > max then
        value = max
    end
    local num2 = value

    return math.acos(num2) * 57.29578
end

Vector2.signedAngle = function(from, to)
    local num = Vector2.angle(from, to)
    local f = from.x * to.y - from.y * to.x
    if f >= 0 then
        f = 1
    else
        f = -1
    end
    return num * f
end

Vector2.distance = function(a, b)
    local x, y = a.x - b.x, a.y - b.y
    return math.sqrt(x ^ 2 + y ^ 2)
end

Vector2.clampMagnitude = function(vec, max)
    local num = vec.sqrMagnitude
    if num > max ^ 2 then
        local num2 = math.sqrt(num)
        local num3 = vec.x / num2
        local num4 = vec.y / num2
        return Vector2.new(num3 * max, num4 * max)
    end
    return vec
end

Vector2.min = function(lhs, rhs)
    return Vector2.new(math.min(lhs.x, rhs.x), math.min(lhs.y, rhs.y))
end

Vector2.max = function(lhs, rhs)
    return Vector2.new(math.max(lhs.x, rhs.x), math.max(lhs.y, rhs.y))
end