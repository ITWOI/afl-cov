~/Documents/afl-cov/afl-cov -d ../maze/klee-last --live --coverage-cmd "cat AFL_FILE | ./a.out " --code-dir . --klee --overwrite

klee --only-output-states-covering-new -write-cov   maze.bc

 ~/Documents/afl-cov/afl-cov -d ../output/ --live --coverage-cmd  "./bzip2 -t AFL_FILE "  --code-dir .
