#this script makes a bunch of random numbers to test my sorting stuff
import random
previous_nums = []
while len(previous_nums) < 100000:
    new_num = random.randint(-5000,10000)
    #if new_num not in previous_nums:
    print(new_num)
    previous_nums.append(new_num)
#for i in range(1,101):
#    print(i)
