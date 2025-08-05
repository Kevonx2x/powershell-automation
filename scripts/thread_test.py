import threading

def print_nums():
    for i in range(10):
        print(i)

def print_chars():
    for i in range(97, 107):  
        print(chr(i))


t1 = threading.Thread(target=print_nums)
t2 = threading.Thread(target=print_chars)


t1.start()
t2.start()
t1.join()
t2.join()

print("End of Program")
