=begin
arr2=[]
arr.each do |i|
 x = 0
 	while x < arr.length
 arr2 << arr[x+1]
 x += 1
end

end
 print arr2


a = [1,2,3,4,5,6]
print a.collect {|x| x * 2}
print a.map.with_index {|x, i| x[i + 1]}
=end
s= 4194560385008504

arr1 = s.to_s.split('') 

print arr1