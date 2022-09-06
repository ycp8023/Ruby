def mfp(m)
  ans=0
  for k in 1..m
    tmp=k
    p=1
    while tmp!=0
      val = tmp%10
      p *=val if val!=0
      tmp /=10
    end
    # printf "p(%d):%d ",k,p
    ans += p
  end
  # printf "\nans:%d\n",ans
  return ans
end
sum = mfp 10000
sqrt = sum ** 0.5
while sum % 2 == 0
  sum/=2
end
k=3
while sum>1 && k<=sqrt
  if sum % k ==0 then
    sum /= k
    sqrt = sum ** 0.5
  else
    k += 2
  end
end
if sum >1
  k = sum
end
if sum == 1
  k = 1
end
puts k
