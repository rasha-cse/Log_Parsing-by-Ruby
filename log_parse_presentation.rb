puts "Enter the desired string:"
file_name= "-.2016-03-26.log" #"therap.log" #"test.txt"
counter = 1
counter2 = 1
txt = ""
File.foreach(file_name) do |line|                                        # reading from file

  if /grails.app.controllers.net.therap.states.par.ParScoreMigrationController:-1/.match(line) && /INFO  -/.match(line) && /SUCCESS/.match(line) && /rid=/.match(line)  #&&/2015-02-03	11:19:05/.match(line)                    # finding matches

    puts "#{line}"
    #matched_line += line
    counter += 1
    txt = txt + line;# + "\n";
  end
  counter2 += 1
end

File.open("sample_output.txt" ,'w') do |s|
  s<<txt
end
puts "Total Matched Lines : #{counter-1}"
puts "Total Lines : #{counter2-1}"
