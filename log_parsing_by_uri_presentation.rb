require 'roo'
puts "Enter the desired string:"
uri=gets.chomp            # 30353190(33), 33572523(114)   #Saving Therap Client for
file_name= "state-nd.2016-03-27.log" #"therap.log" #"test.txt"
counter = 1
counter2 = 1
txt = ""
File.foreach(file_name) do |line|                                        # reading from file

  if /#{uri}/.match(line)# && /, G,/.match(line)
    puts "#{line}"
    counter += 1
    txt = txt + line;# + "\n";
  end
  counter2 += 1
end

File.open("sample_output_uri.txt" ,'w') do |s|
  s<<txt
end

puts "Total Matched Lines : #{counter-1}"
puts "Total Lines : #{counter2-1}"
