//
// unit_test.c
//

#include <stdlib.h>
#include <stdarg.h>
#include <setjmp.h>
#include <cmocka.h>
#include "../src/unit.h"

static void dummy_test(void **state)
{
  (void) state;
  assert_int_equal(dummy(), 0);
}

int main(void)
{
  const struct CMUnitTest tests[] = {
    cmocka_unit_test(dummy_test)
  };
  return cmocka_run_group_tests(tests, NULL, NULL);
}
