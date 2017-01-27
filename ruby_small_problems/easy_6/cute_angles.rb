def dms(int)
  degrees = int.floor
  m = (int - degrees) * 60
  s = (m.floor - m) * 60
  puts "#{degrees}°#{m.floor}'#{s.abs.floor}\""
end

dms(76.73)
dms(0) == %(0°00'00")
dms(93.034773) == %(93°02'05")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
