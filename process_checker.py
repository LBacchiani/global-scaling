import time
import psutil
import subprocess
import threading
import os
import sys
import signal

def read_file(filename):
    with open(filename, "r") as f:
        lines = f.readlines()
    return lines[-1]

def restart(total_run, process):
    sys.argv[3] = str(total_run)
    os.execv(sys.executable, ['python3'] + sys.argv)
    os.killpg(os.getpgid(process.pid), signal.SIGTERM)
    raise SystemExit

def check(filename, commandPath, runs):
    total_run = runs
    if total_run < 100:
        if os.path.exists("ABS-test/" + filename + str(total_run) + ".dat"): os.remove("ABS-test/" + filename + str(total_run) + ".dat")
        p = subprocess.Popen(["ABS-Simulations-Comparison/" + commandPath + "/gen/erl/run > ABS-test/" + filename + str(total_run) + ".dat"], stdout=subprocess.PIPE, shell=True)
        print(commandPath + " PID " + str(p.pid) + " run number: " + str(total_run))
        current = ""
        while(True):
            time.sleep(600)
            last_line = read_file("ABS-test/" + filename + str(total_run) + ".dat")
            t = int(last_line.split()[0])
            if last_line != current:
                if t >= 220:
                    print("Exec number " + str(total_run) + " of " + commandPath + " ended")
                    total_run += 1
                    restart(total_run, p)
                current = last_line
            else:
                print("Restart exec number " + str(total_run) + " of " + commandPath + " ended")
                restart(total_run, p)


if not os.path.exists("ABS-test"): os.makedirs("ABS-test")
if not os.path.exists("ABS-test/K20"): os.makedirs("ABS-test/K20")
check(sys.argv[1], sys.argv[2], int(sys.argv[3]))

#K4/global globalScaling 0
#K4/predictiveGlobal predictiveGlobalScaling 0
#K4/oracle oracleScaling 0
