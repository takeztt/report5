# report5
- report5.sh : 引数に指定された２つの自然数の最大公約数を表示するスクリプト
- test-report5.sh : 「report5.sh」のテスト用スクリプト


# Travis CI の実行結果
```
$ echo "hello"
hello
The command "echo "hello"" exited with 0.
0.00s$ echo "Travis CI test in .travis.yml"
Travis CI test in .travis.yml
The command "echo "Travis CI test in .travis.yml"" exited with 0.
0.03s$ ./test-report5.sh
### TEST1 started ###
[ERROR] wrong number of arguments(given 3, expected 2)
[ERROR] wrong number of arguments(given 1, expected 2)
### TEST1 completed ###
### TEST2-1 started ###
[ERROR] Arg1(0) is not natural number
[ERROR] Arg2(0) is not natural number
### TEST2-1 completed ###
### TEST2-2 started ###
[ERROR] Arg1(-100) is not natural number
[ERROR] Arg2(-123) is not natural number
### TEST2-2 completed ###
### TEST2-3 started ###
[ERROR] Arg1(abc) is not natural number
[ERROR] Arg2(test) is not natural number
### TEST2-3 completed ###
### TEST3-1 started ###
greatest common divisor of 6 and 12 -> 6
### TEST3-1 completed ###
All tests finished successfully
The command "./test-report5.sh" exited with 0.
Done. Your build exited with 0.
```
