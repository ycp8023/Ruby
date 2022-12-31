def count_ones(n)
  cnt=0
  while n>0
    if (n&1)==1 then
      cnt+=1
    end
    n=n>>1
  end
  return cnt
end