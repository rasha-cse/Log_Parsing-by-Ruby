require 'csv'
require 'time'

#file_name= "demo_log.txt"
#file_name= "r_mismatch_all_86_messages.txt"
#file_name2 = "r-xfer01-fx-1472533209565.xml"
file_name2 = "r_apr_1_2017.xml"
#par_info = Hash.new{|hsh,key| hsh[key] = []}

counter = 1
p "r Tracking Numbers: "
File.foreach(file_name2) do |line|

  if /r_track_num/.match(line) #|| /r id:/.match(line)     #r tracking number:, r id: #/r tracking number:/ <- file_name
    puts "#{counter}. "+ line.split('>')[1].split('<')[0]
    counter += 1
  end

end
