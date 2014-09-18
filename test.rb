File.open("data1.csv") do |file_ref|
   file_ref.each_line { |line| puts line }
end