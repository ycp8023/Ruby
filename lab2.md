# case equality operator ===

> 20373630-恽础萍-lab2

在ruby-doc文档中，=== 是class Range（Object）的一个method，解释如下

> **rng === obj -> true or false**
>
> Returns true if obj is between begin and end of range, false otherwise. Conveniently, === is the comparison operator used by case statements.

大概意思是，右侧obj 若在 === 左侧范围内，则返回true，反之返回false。通常情况下，=== 常作为比较运算符，用在case语句中。

经过延伸之后，大概可以分为以下几种常见含义：

## 1.右侧数值是否在左侧范围中
```ruby
(1..2) === 2    #true
(1...2) === 2   #false
```
Ⅰ：2在1-2的闭区间，返回true

Ⅱ：2不在1-2的左闭右开区间，返回false

## 2.右侧值是否与左侧值相等
```ruby
1.0 === 1         #true
1 === 1           #true
"abc" === "abc"   #true
```

可以发现，===的判断相等只是值上的是否相等，不对类型严格要求（如1.0===1返回true），也不对对象的地址进行比较，见下例：

```ruby
def test1
  String a = "abc"
  String b = a
  return a === b
end
def test1
  String a = "abc"
  String b = "abc"
  return a === b
end
ans = test1
puts ans
ans = test2
puts ans
```

两次输出ans均为true，可以证明。

## 2.右侧字符串是否匹配左侧正则表达式
```ruby
/asdf/ === "asdf"     #true
/\d+/ === "123"       #true
"asdf" === /asdf/     #false
```

显然，第三种情况反过来是输出false的

## 3.右侧对象是否为左侧class的实例
```ruby
String === "s"      #true
Integer === 1       #true
Integer === 1.0     #false
```
第三种情况，1.0不是integer类型，所以输出false

