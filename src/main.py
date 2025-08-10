import time
import sys

def main():
    spinner = ['|', '/', '-', '\\']
    i = 0
    while True:
        msg = f'\r👋 Hello, World! Running smoothly {spinner[i % len(spinner)]}'
        print(msg, end='', flush=True)
        time.sleep(0.3)
        i += 1

if __name__ == "__main__":
    main()
