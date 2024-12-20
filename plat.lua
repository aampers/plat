function _init()
	-- player setup
	player = {
		x = 64, -- initial horizontal position
		y = 64, -- initial vertical position
		dx = 0, -- horizontal velocity
		dy = 0, -- vertical velocity
		w = 8, -- width (temp)
		h = 8, -- height (temp)
		grounded = false -- is the player on the ground?
	}

	-- world setup
	gravity = 0.25
	max_speed = 2
	jump_strength = -4

	-- Example map
	for x = 0, 15 do
		mset(x, 15, 1) -- Fill the bottom row with solid tiles
	end
end

-- checks if the given position intersects with solid tiles
function is_solid(x, y)
	-- convert pixel coordinates to tile coordinates
	local tile_x = flr(x / 8)
	local tile_y = flr(y / 8)

	-- get the tile at that position
	local tile = mget(tile_x, tile_y)

	-- return true if tile is solid
	-- assumes flag 0 marks solid tiles
	return fget(tile, 0)
end

function _update()
	-- movement
	if btn(0) then
		-- accel left
		player.dx = max(player.dx - 0.1, -max_speed)
	elseif btn(1) then
		-- & right
		player.dx = min(player.dx + 0.1, max_speed)
	else
		-- decelerate otherwise
		player.dx *= 0.8
	end

	-- apply gravity
	player.dy += gravity

	-- jumping
	if player.grounded and btnp(4) then
		player.dy = jump_strength
		player.grounded = false
	end

	-- apply velocity y
	player.y += player.dy

	-- check for collisions
	if player.dy > 0 and is_solid(player.x + player.w / 2, player.y + player.h) then
		-- Snap to the nearest tile
		player.y = flr(player.y / 8) * 8
		player.dy = 0
		player.grounded = true
	else
		player.grounded = false
	end

	-- apply velocity x
	player.x += player.dx
end

function _draw()
	cls()

	-- world
	map(0, 0, 0, 0, 16, 16)

	-- player
	rectfill(player.x, player.y, player.x + player.w - 1, player.y + player.h - 1, 7)
end