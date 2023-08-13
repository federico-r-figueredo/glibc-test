export glibc_install="../glibc/build/install"
set -eux
gcc -L "${glibc_install}/lib" -I "${glibc_install}/include" -Wl,--rpath="${glibc_install}/lib" -Wl,--dynamic-linker="${glibc_install}/lib/ld-linux-x86-64.so.2" -std=c11 -o /build/test_glibc.out -v test_glibc.c -pthread
ldd ./bulid/test_glibc.out