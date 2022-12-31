=begin
对于一个数n，我们可以用k = 2,3,4,5…这样的数来尝试整除它。对于每一个k，如果它可以整除n，就令n = n / k，一直到k不能再整除n为止.
按照上述方法，最终一定会有一个数k使得n / k = 1,这个k就是我们要求解的最大质因数。
每个自然数最多只能有一个大于sqrt(n)的质因数
=end
def func(m)
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
def mfp(m)
sum = func m
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
return k
end