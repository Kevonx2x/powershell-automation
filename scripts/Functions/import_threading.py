import threading

def print_nums():
    for i in range(10):
        print(i)

def print_chars():
    for i in range(97, 107):  # ASCII 97 = 'a', 107 = 'j' (not included)
        print(chr(i))

# Create threads
t1 = threading.Thread(target=print_nums)
t2 = threading.Thread(target=print_chars)

# Start threads
t1.start()
t2.start()

# Wait for threads to finish
t1.join()
t2.join()

print("End of Program")
