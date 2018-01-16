# require 'byebug'
# AfterStep { |urvashi|
#   puts "watching each step #{urvashi}"
#   if not urvashi.passed?
#      fail
#   end
# }

# Before do
#   puts "-----------Started at #{Time.now}"
#   sleep(2)
#   @t  = 1
# end
# After do
#   puts "-----------Ending at #{Time.now}"
# end
# AfterStep do
#   sleep(1)
#   puts "Sleeping for 1 sec"
#   # if @t == 3
#   #   at_exit do
#   #     exit
#   #   end
#   # end
#   # exit if @t == 3
#   @t += 1
# end

#b = Watir::Browser.new :safari, technology_preview: true
