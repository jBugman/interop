#include <HsFFI.h>

void wrapped_init()
{
  static char *argv[] = { "libhello.so", 0 }, **argv_ = argv;
  static int argc = 1;
  hs_init(&argc, &argv_);
}

void wrapped_exit()
{
  hs_exit();
}
