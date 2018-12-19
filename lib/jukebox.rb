songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list arr
  arr.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play arr
  puts "Please enter a song name or number:"
  requested = gets.chomp
  arr.each_with_index do |song, i|
    if requested.casecmp(song) == 0 || requested.to_i == (i + 1)
      return puts "Playing #{song}"
    end
  end
  return puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run songs
  help
  puts "Please enter a command:"
  command = gets.strip
  until command == "exit"
    case command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    else
      puts "Enter a valid command, (#{command}) <- doesn't make any sense!"
    end
    puts "Please enter a command:"
  command = gets.strip
  end
  exit_jukebox
end
