require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddle_of_the_sphinx')

get('/') do
  erb(:input)
end


post('/output') do
  @riddle1 = params.fetch("riddle1")
  @riddle2 = params.fetch("riddle2")
  @riddle3 = params.fetch("riddle3")
  @riddle4 = params.fetch("riddle4")

  riddle1 = SphinxRiddles.new(@riddle1)
  riddle2 = SphinxRiddles.new(@riddle2)
  riddle3 = SphinxRiddles.new(@riddle3)
  riddle4 = SphinxRiddles.new(@riddle4)



  if riddle1.riddleOne? == 'short'
    @string_to_display1 = "You got it, that is the correct answer!"
  else
    @string_to_display1 = "Sorry that is the incorrect answer. Here's a hint it ryhmes fort"
  end

  if riddle2.riddleTwo? == 'mississippi'
    @string_to_display2 = "You got it, that is the correct answer!"
  else
    @string_to_display2 = "Sorry that is the incorrect answer. Here's a hint, its well known river."
  end

  if riddle3.riddleThree? == 'silence'
    @string_to_display3 = "You got it, that is the correct answer!"
  else
    @string_to_display3 = "Sorry that is the incorrect answer. Here's a hint, it is the opposite of loud"
  end

  if riddle4.riddleFour? == 'glass'
    @string_to_display4 = "You got it, that is the correct answer!"
  else
    @string_to_display4 = "Sorry that is the incorrect answer. Here's a hint, it's made of sand and its transparent"
  end

  erb(:output)
end
