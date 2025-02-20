def func(l):
    s = l.split()
    for i in s:
        nums = [int(n) for n in i if n.isdigit()]
        print(f'(connected loc-{nums[0]}-{nums[1]} loc-{nums[2]}-{nums[3]} c{nums[0]}{nums[1]}{nums[2]}{nums[3]})')
    return None

func("c1121 c1121 c2131 c3132 c3141 c3233 c3334 c3323 c2324 c2434 c4142 c4243 c4344")