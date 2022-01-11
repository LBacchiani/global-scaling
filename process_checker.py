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

def kill_by_name(name):
    for proc in psutil.process_iter():
        if proc.name() == name:
            proc.kill()

def restart(total_run):
    sys.argv[3] = str(total_run)
    kill_by_name("beam.smp")
    os.execv(sys.executable, ['python3'] + sys.argv)
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
                    restart(total_run)
                current = last_line
            else:
                print("Restart exec number " + str(total_run) + " of " + commandPath)
                restart(total_run)


if not os.path.exists("ABS-test"): os.makedirs("ABS-test")
if not os.path.exists("ABS-test/K20"): os.makedirs("ABS-test/K20")
check(sys.argv[1], sys.argv[2], int(sys.argv[3]))

#K20/global globalScaling 0
#K20/predictiveGlobal predictiveGlobalScaling 0
#K20/oracle oracleScaling 0
