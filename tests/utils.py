
import subprocess

PATH = "../bin/test-experiment"

def exec_cmd(*args):
  cmd = f"{PATH} {' '.join(str(arg) for arg in args)}"
  output = subprocess.getoutput(cmd)
  exit_code = subprocess.call(cmd, shell=True)
  return output, exit_code

def assert_eq(expected, actual):
  if expected != actual:
    print(f"Expected '{expected}' but got '{actual}'")
    exit(1)
