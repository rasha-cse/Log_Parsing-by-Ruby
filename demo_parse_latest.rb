require 'csv'
require 'time'

#file_name= "demo2.log.txt"
#file_name= "state-r_log_demo_context_local_2008_09_03_04_2016.log"
file_name = "state-r_demoContext_4_april.log"
#login_session_id = Hash.new( 0 )
par_info = Hash.new{|hsh,key| hsh[key] = []}
#session_er_time = Hash.new( 0 )

counter = 0


File.foreach(file_name) do |line|

  if /SUCCESS/.match(line) || /ERROR: NOT SCORED/.match(line)
    #puts "#{counter}"
    p line.split('SUCCESS]')[-1]
    p par_info["PAR_ID"][counter] = line.split('=')[1].split(',')[0]
    p par_info["r_ID"][counter] = line.split('=')[2].split(',')[0]
    p par_info["REGION"][counter] = line.split('=')[3].split(',')[0]
    p par_info["DOB"][counter] = line.split('=')[4].split(',')[0]
    p par_info["AGE(ASSESMENT DATE)"][counter] = line.split('=')[5].split(',')[0]
    p par_info["PAR CREATION DATE"][counter] = line.split('=')[6].split(',')[0]
    p par_info["PAR LAST UPDATED DATE"][counter] = line.split('=')[7].split(',')[0].chomp
    p par_info["PAR ASSESMENT DATE"][counter] = line.split('=')[8].split(',')[0]
    p par_info["MR FLAG"][counter] = line.split('=')[9].split(',')[0]
    p par_info["DIAGNOSIS"][counter] = line.split('=')[10].split(']')[0] + "]"
    p par_info["CM"][counter] = line.split('=')[11].split(',')[0]
    p par_info["MS"][counter] = line.split('=')[12].split(',')[0]
    p par_info["SS"][counter] = line.split('=')[13].split(',')[0]
    p par_info["RS"][counter] = line.split('=')[14].split(',')[0]
    p par_info["DS"][counter] = line.split('=')[15].split(',')[0]
    p par_info["IL"][counter] = line.split('=')[16].split(',')[0]
    p par_info["BI"][counter] = line.split('=')[17].split(',')[0]
    p par_info["MD"][counter] = line.split('=')[18].split(',')[0]
    p par_info["PY"][counter] = line.split('=')[19].split(',')[0]
    p par_info["AS Summary"][counter] = line.split('=')[20].split(',')[0]
    p par_info["HCBS AVERAGE SCORE"][counter] = line.split('=')[21].split(',')[0]
    p par_info["OLD_HCBS_SCREENABLE_FLAG"][counter] = line.split('=')[22].split(',')[0]
    p par_info["NEW_HCBS_SCREENABLE_FLAG"][counter] = line.split('=')[23].split(',')[0]
    p par_info["PAR LEVEL"][counter] = line.split('=')[24].split(',')[0]
    p par_info["PAR SCORE AVERAGE"][counter] = line.split('=')[25].split(',')[0]

    #p line.split(' ')[12].split('=')[0]

    #p line.split(" ").fetch(17)

   counter += 1
  er
er

#p par_info
counter1= 0

#=begin
CSV.open("demo_log_2008_09_april_4th.csv", "wb") do |csv|
  csv << ["PAR ID","r ID","Region", "DOB", "AGE(ASSESMENT DATE)", "PAR CREATION DATE", "PAR LAST UPDATED DATE", "PAR ASSESMENT DATE", "MR FLAG", "DIAGNOSIS", "MD", "PY", "MS", "IL", "CM", "SS", "BI", "AS Summary", "RS", "DS", "HCBS AVERAGE SCORE", "OLD_HCBS_SCREENABLE_FLAG", "NEW_HCBS_SCREENABLE_FLAG", "PAR SCORE AVERAGE", "PAR LEVEL" ]

  for counter1 in 0...counter
    csv << ["#{par_info["PAR_ID"][counter1]}","#{par_info["r_ID"][counter1]}", par_info["REGION"][counter1], par_info["DOB"][counter1], par_info["AGE(ASSESMENT DATE)"][counter1], par_info["PAR CREATION DATE"][counter1], par_info["PAR LAST UPDATED DATE"][counter1], par_info["PAR ASSESMENT DATE"][counter1], par_info["MR FLAG"][counter1], par_info["DIAGNOSIS"][counter1], par_info["MD"][counter1], par_info["PY"][counter1], par_info["MS"][counter1], par_info["IL"][counter1], par_info["CM"][counter1],par_info["SS"][counter1], par_info["BI"][counter1], par_info["AS Summary"][counter1], par_info["RS"][counter1], par_info["DS"][counter1],par_info["HCBS AVERAGE SCORE"][counter1],par_info["OLD_HCBS_SCREENABLE_FLAG"][counter1],par_info["NEW_HCBS_SCREENABLE_FLAG"][counter1],par_info["PAR SCORE AVERAGE"][counter1],par_info["PAR LEVEL"][counter1]]
  er
  #}
er
#=er
puts "Total Lines : #{counter+1}"



