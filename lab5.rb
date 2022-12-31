def create_hash(keys, values)
  myHash=Hash.new;
  keys.each_with_index do |item,index|
    myHash[item]=values[index]
  end
  return myHash
end
create_hash(%w{a b c d}, ["1", "2", "3", "4"])