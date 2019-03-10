import random
def FIFO(frames, ref, capacity):
    print("\nString|Frame →\t",end='')
    fault,top,pf = 0,0,'No'
    for i in range(capacity):
        print(i,end=' ')
    print("Fault\n   ↓\n")
    for i in ref:
        if i not in frames:
            if len(frames)<capacity:
                frames.append(i)
            else:
                frames[top] = i
                top = (top+1)%capacity
            fault += 1
            pf = 'Yes'
        else:
            pf = 'No'
        print("   %d\t\t"%i,end='')
        for x in frames:
            print(x,end=' ')
        for x in range(capacity-len(frames)):
            print(' ',end=' ')
        print(" %s"%pf)
    print("\nTotal requests: %d\nTotal Page Faults: %d\nFault Rate: %0.2f%%"%(len(ref),fault,(fault/len(ref))*100))

while(True):
    print("Enter the number of frames: ",end="")
    capacity = int(input())
    f = []
    print("[1] Random reference string [2] Customize reference string: ",end="")
    userInput = int(input())
    s = []
    if(userInput == 1):
        print("Enter the number of range String ref.: ",end="")
        randomRangeInput = int(input())
        for i in range(randomRangeInput):
            x = random.randint(0,9)
            s.append(x)
    elif(userInput == 2):
        print("Enter the reference string: ",end="")
        s = list(map(int,input().strip().split()))
    FIFO(f, s, capacity)