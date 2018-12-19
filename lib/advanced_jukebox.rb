#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => '/Users/alex/Development/ruby/jukebox-cli-london-web-career-012819/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/alex/Development/ruby/jukebox-cli-london-web-career-012819/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/alex/Development/ruby/jukebox-cli-london-web-career-012819/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/alex/Development/ruby/jukebox-cli-london-web-career-012819/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/alex/Development/ruby/jukebox-cli-london-web-career-012819/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/alex/Development/ruby/jukebox-cli-london-web-career-012819/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/alex/Development/ruby/jukebox-cli-london-web-career-012819/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  counter = 1
  my_songs.each do |song, path|
    puts "#{counter}. #{song}"
    counter += 1
  end
end



def play(my_songs)
  puts "Please choose a song by typing in the name of it!"
  choice = gets.strip
  my_songs.each do |song, path|
    if choice.casecmp(song) == 0
      system "open #{path}"
    end
  end
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
