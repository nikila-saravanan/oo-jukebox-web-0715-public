class Jukebox

  def initialize(songs)
    @songs = songs
  end

  def call
    puts "Please enter a command."
    command = gets.chomp
      case command
      when "help"
        help
      when "list"
        list 
      when "play"
        play
      when "exit"
        exit
      else
        play(command.gsub("play ",""))
      end
  end

  def list
    @songs.each do |song|
      puts song
    end
  end

  def help
    #lists all commands
    puts "My commands are:\n
    help -- lists all commands\n
    list -- lists all songs a user can play\n
    play -- plays a song\n
    exit -- exits program\n"
  end

  def play(song=nil)
    unless song
      puts "Which song would you like to play?"
      song = gets.chomp
    end
    puts "Now Playing: #{song}" if @songs.include?(song)
    puts "Now Playing: #{@songs[song.to_i-1]}" if song.to_i > 0
  end

  def exit
    puts "Goodbye"
  end

end