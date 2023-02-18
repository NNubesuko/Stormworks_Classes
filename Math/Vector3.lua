-- Vector3 class
Vector3 = {}
Vector3.new = function(x, y, z)
    local o = {}
    o.x = x
    o.y = y
    o.z = z

    o.magnitude = math.sqrt(o.x ^ 2 + o.y ^ 2 + o.z ^ 2)

    o.normalized = function()
        return Vector3.new(o.x / o.magnitude, o.y / o.magnitude, o.z / o.magnitude)
    end
    o.toString = function()
        return string.format("%f, %f, %f", o.x, o.y, o.z)
    end
    return o
end

-- static field
-- Vector2.up = Vector2.new(0, 1)
-- Vector2.down = Vector2.new(0, -1)
-- Vector2.left = Vector2.new(-1, 0)
-- Vector2.right = Vector2.new(1, 0)

-- static field
Vector3.zero = Vector3.new(0, 0, 0)
Vector3.one = Vector3.new(1, 1, 1)