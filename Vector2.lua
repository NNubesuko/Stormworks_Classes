-- Vector2 class
Vector2 = {}
Vector2.new = function(x, y)
    local o = {}
    o.x = x
    o.y = y
    o.magnitude = math.sqrt(o.x ^ 2 + o.y ^ 2)

    o.normalized = function()
        return Vector2.new(o.x / o.magnitude, o.y / o.magnitude)
    end
    o.toString = function()
        return string.format("%f, %f", o.x, o.y)
    end
    return o
end

-- static field
Vector2.up = Vector2.new(0, 1)
Vector2.down = Vector2.new(0, -1)
Vector2.left = Vector2.new(-1, 0)
Vector2.right = Vector2.new(1, 0)

-- static method
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
Vector2.dot = function(lhs, rhs)
    return lhs.x * rhs.x + lhs.y * rhs.y
end
Vector2.distance = function(lhs, rhs)
    return Vector2.sub(lhs, rhs).magnitude
end