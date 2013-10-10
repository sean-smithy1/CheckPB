#!/usr/bin/ruby

ticket = {}

File.open("./Numbers.txt").each do |line|
  if (line =~ /^Number: (.*)/)
    @id=$1.strip.to_s
  end

  if (line =~ /^\[(\d*)\]\s(.*)\s\sPB: (.*)$/)
    @game=$1.strip.to_i
    @nums=$2.split(" ").map { |s| s.to_i}
    @nums << $3.strip.to_i if $3 != 'POWERHIT'
    puts "#{@id}, #{@game}, #{@nums}"
  end
end
