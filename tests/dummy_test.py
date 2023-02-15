
from utils import exec_cmd, assert_eq

# Success case without arguments
output, exit_code = exec_cmd()
assert_eq(0, exit_code)

# Success case with arguments
output, exit_code = exec_cmd(0, "foo")
assert_eq(0, exit_code)
assert_eq("foo", output)

# Failure case with arguments
output, exit_code = exec_cmd(1, "bar")
assert_eq(1, exit_code)
assert_eq("bar", output)
