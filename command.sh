~/Documents/afl-cov/afl-cov -d ../maze/klee-last --live --coverage-cmd "cat AFL_FILE | ./a.out " --code-dir . --klee --overwrite

klee --only-output-states-covering-new -write-cov   maze.bc

~/Documents/afl-cov/afl-cov -d ../output/ --live --coverage-cmd  "./bzip2 -t AFL_FILE "  --code-dir . --overwrite

#==========
klee --only-output-states-covering-new --libc=uclibc --posix-runtime mknod.bc  --sym-args 0 1 10 --sym-args 0 3 2 --sym-files 1 8 --sym-stdin 8 --sym-stdout

#==========
~/Documents/afl-cov/afl-cov -d ../../build-afl/src/output/ --live --coverage-cmd "./cat AFL_FILE " --code-dir . --overwrite
~/work/hybrid/afl-2.52b/afl-fuzz -i input -o output ./cat -A @@
