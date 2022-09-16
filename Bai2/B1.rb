#Bai 1
print "Nhap phan tu mang"
arrayLength = gets
array = []
for i in (0..arrayLength-1)
  array << gets
end
puts array.max
puts array.min

