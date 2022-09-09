def decode_ways(code)
  return 0 if code ==0
  len=0;
  tmp=code;
  while tmp>0
    tmp/=10;
    len+=1
  end
  str=code.to_s
  array=Array.new(len);
  #array[0]
  if str[0]=='0' then
    array[0]=0
  else
    array[0]=1
  end
  #array[1]
  if str[0]=='1'then
    #1[1-9]
    if str[1]!='0' then
    array[1]=2
    #10
    else
      array[1]=1
    end
  elsif str[0]=='2'then
    #2[1-6]
    if /[1-6]/===str[1] then
    array[1]=2
    #20/2[7-9]
    else
      array[1]=1
    end
  else
    #[3-9]0
    if str[1]=='0' then
      array[1]=0
    else
      #[3-9][1-9]
      array[1]=1
    end
  end
  #array
  for i in 2..len-1
    if str[i-1]=='1' then
      if str[i]=='0' then
        array[i]=array[i-2]
      else
        array[i]=array[i-2]+array[i-1];
      end
    elsif str[i-1]=='2' then
      if /[1-6]/===str[i] then
        array[i]=array[i-2]+array[i-1]
      elsif str[i]=='0' then
        array[i]=array[i-2]
      else
        array[i]=array[i-1]
      end
    elsif str[i-1]=='0' then
      if str[i]=='0' then
        array[i]=0
      else
        array[i]=array[i-1]
      end
    else
      array[i]=array[i-1]
    end
  end
  # for i in 0..len-1
  #   printf "i:%d array:%d\n",i,array[i]
  # end
  return array[len-1]
end
