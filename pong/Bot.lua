Bot = Class{}

function Bot:init(height)
	self.h = (height / 2) -- Get the middle of the paddle

	self.smooth = 10
	-- It makes the bot less wiggle, but easier to win the bigger it is.

    self.ball = 0
    self.me = 0
end

-- Bot read ball y and paddle y
function Bot:update(ball_pos, player_pos)
	self.ball = ball_pos
	self.me = player_pos
end

-- Returns 1 when move down 0 when stay, and -1 when up
function Bot:move()

	if self.ball < self.me + self.h - self.smooth then
		--move up
		return -1

	elseif self.ball > self.me + self.h + self.smooth then
		--move down
		return 1

	else
		--stay
		return 0

	end

end