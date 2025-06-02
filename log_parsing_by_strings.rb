require 'roo'

# s1 = Roo::Excelx.new("new6indi_22Dec.xlsx")
#
# (2..s1.last_row).each do |row|
#   #puts row
#   puts s1.cell(row,1).to_i.to_s.chomp
#
#   end


puts "Enter the desired string:"
#uri=gets.chomp            # 30353190(33), 33572523(114)   #Saving Therap Client for

file_name= "r-r.2016-03-26.log" #"therap.log" #"test.txt"
#file_name= "nd_18_19_dec.log" #"therap.log" #"test.txt"

#file_name= "all_fx_se" #"therap.log"

counter = 1
counter2 = 1
#flag = 0
ind_id = ""

File.foreach(file_name) do |line|                                        # reading from file

  # if /Job GRAILS_JOBS.net.therap.states.IndividualIntakeJob threw a JobExecutionException:/.match(line)
  #   # puts "###########################################################"
  #   # puts line
  #   #puts "###########################################################"
  #   puts ind_id
  #   #flag =
  # end

  #if /#{uri}/.match(line)
  if /grails.app.controllers.net.therap.states.par.ParScoreMigrationController:-1/.match(line) && /INFO  -/.match(line) && /SUCCESS/.match(line) && /rid=/.match(line)  #&&/2015-02-03	11:19:05/.match(line)                    # finding matches
    #puts "#{counter}." + line.split(" ").fetch(7)  # for "all_fx_se"
    #puts "#{counter}." + line.split(" ").fetch(14)  # for therap.log
    #puts "#{counter}." + line
    #ind_id = line.split(" ").last
    #flag = 1
    puts "#{line}"
    #matched_line += line
    counter += 1
  end
  counter2 += 1
end

#puts "#{matched_line}"
puts "Total Matched Lines : #{counter-1}"
puts "Total Lines : #{counter2-1}"
