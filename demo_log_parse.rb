require 'csv'
require 'time'

#file_name= "demo_log.txt"
file_name= "log_23_28_03_16"

#login_session_id = Hash.new( 0 )
par_info = Hash.new{|hsh,key| hsh[key] = []}
#session_end_time = Hash.new( 0 )

counter = 0


File.foreach(file_name) do |line|

  if /SUCCESS/.match(line)
  #puts "#{counter}"
  p line.split(']')[-1]
  p par_info["PAR_ID"][counter] = line.split('=')[1].split(',')[0]
  p par_info["THERAP_ID"][counter] = line.split('=')[2].split(',')[0]
  p par_info["REGION"][counter] = line.split('=')[3].split(',')[0]
  p par_info["PROVIDER"][counter] = line.split('=')[4].split(',')[0]
  p par_info["DDPM"][counter] = line.split('=')[5].split(',')[0]
  p par_info["OLD_HCBS_SCREENABLE_FLAG"][counter] = line.split('=')[6].split(',')[0]
  p par_info["NEW_HCBS_SCREENABLE_FLAG"][counter] = line.split('=')[7].split(',')[0].chomp

  #p line.split(' ')[12].split('=')[0]

#p line.split(" ").fetch(17)

  counter += 1
  end
end

#p par_info
counter1= 0

#=begin
CSV.open("demo_log_total.csv", "wb") do |csv|
  csv << ["PAR ID","Therap ID","Region", "Provider", "DDPM", "OLD_HCBS_SCREENABLE_FLAG", "NEW_HCBS_SCREENABLE_FLAG"]

  for counter1 in 0...counter
     csv << ["#{par_info["PAR_ID"][counter1]}","#{par_info["THERAP_ID"][counter1]}", par_info["REGION"][counter1], par_info["PROVIDER"][counter1], par_info["DDPM"][counter1], par_info["OLD_HCBS_SCREENABLE_FLAG"][counter1], par_info["NEW_HCBS_SCREENABLE_FLAG"][counter1] ]
  end
  #}
end
#=end
puts "Total Lines : #{counter+1}"



