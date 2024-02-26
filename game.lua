--- Create a game where a user must guess a number between 1 and 100
-- The program will loo back and forth with the user until the user guesses the number
-- Tell the user if their guess is too high or too low
--  Once the user guesses the number, tell them how many guesses it took them
--  If the user wants to play again, start the game over
--  If the user does not want to play again, end the game and print "Goodbye!"
--    and then exit the program

-- get  a random number between 1 and 100
--  get the user's guess
--  compare the user's guess to the random number
--  if the user's guess is too high, tell them
--  if the user's guess is too low, tell them
--  if the user's guess is correct, tell them and end the game

while true do
	-- get a random number between 1 and 100
	local number = math.random(1, 100)
	-- get the user's guess
	local guess = 0
	local numberOfGuesses = 0
	while guess ~= number do
		print("Guess a number between 1 and 100")
		guess = io.read("*n")
		numberOfGuesses = numberOfGuesses + 1
		-- compare the user's guess to the random number
		if guess > number then
			-- if the user's guess is too high, tell them
			print("Your guess is too high")
		elseif guess < number then
			-- if the user's guess is too low, tell them
			print("Your guess is too low")
		else
			-- if the user's guess is correct, tell them and end the game
			print("Congratulations! You guessed the number in " .. numberOfGuesses .. " guesses")
		end
	end
	-- ask the user if they want to play again
	print("Do you want to play again? (yes or no)")
	local answer = io.read()
	if answer == "no" then
		-- if the user does not want to play again, end the game and print "Goodbye!"
		print("Goodbye!")
		break
	end
end
