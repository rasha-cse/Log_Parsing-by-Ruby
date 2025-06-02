
puts "Enter the desired string:"
uri=gets.chomp            # 30353190(33), 33572523(114)   #Saving Therap Client for

file_name= "16.r-r.log.2015-12-09" #"therap.log" #"test.txt"
#file_name= "all_fx_se" #"therap.log"

counter = 1
#flag = 0
ind_id = ""

File.foreach(file_name) do |line|                                        # reading from file

  if /Job GRAILS_JOBS.net.therap.states.IndividualIntakeJob threw a JobExecutionException:/.match(line)
    # puts "###########################################################"
    # puts line
    #puts "###########################################################"
    puts ind_id
    #flag = 0
  end

  if /#{uri}/.match(line)  #&& /ERROR/.match(line)  #&&/2015-02-03	11:19:05/.match(line)                    # finding matches
    #puts "#{counter}." + line.split(" ").fetch(7)  # for "all_fx_se"
    #puts "#{counter}." + line.split(" ").fetch(14)  # for therap.log
    #puts "#{counter}." + line
    ind_id = line.split(" ").last
    #flag = 1
    #puts "#{line}"
    #matched_line += line
    counter += 1
  end

end

#puts "#{matched_line}"
puts "Total Lines : #{counter-1}"

# File.open("temp", "r") do |fh|
#   while(line1 = fh.gets) != nil
#     if line1.include?("info")
#       while(line1 = fh.gets) != nil
#         puts "#{line1}"
#         break if line1.include?(")")
#       end
#     end
#   end
# end


