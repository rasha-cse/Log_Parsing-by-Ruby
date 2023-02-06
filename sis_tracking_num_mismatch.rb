require 'csv'
require 'time'

#file_name= "demo_log.txt"
#file_name= "sis_mismatch_all_86_messages.txt"
#file_name2 = "therap-xfer01-fx-1472533209565.xml"
file_name2 = "therap_apr_1_2017.xml"
#par_info = Hash.new{|hsh,key| hsh[key] = []}

counter = 1
p "SIS Tracking Numbers: "
File.foreach(file_name2) do |line|

  if /sis_track_num/.match(line) #|| /SIS id:/.match(line)     #SIS tracking number:, SIS id: #/SIS tracking number:/ <- file_name
    puts "#{counter}. "+ line.split('>')[1].split('<')[0]
    counter += 1
  end

end