#!/bin/bash
########################################
# テスト1
# 引数の数が2以外の時の動作確認
# 戻り値0(引数の数が2の時の結果)で終了した場合はエラー
########################################
# 引数の数が3の場合
./report5.sh 1 10 100 ; exit_cd=$?
[ ${exit_cd} -eq 0 ] && exit ${exit_cd}

# 引数の数が1の場合
./report5.sh 1 ; exit_cd=$?
[ ${exit_cd} -eq 0 ] && exit ${exit_cd}

echo "TEST1 completed"


########################################
# テスト2
# 引数に自然数以外の値を指定した時の動作確認
# 戻り値0(引数が自然数の時の結果)で終了した場合はエラー
########################################
# 2-1 : 第1引数or第2引数が"0"
./report5.sh 0 10 ; exit_cd=$?
[ ${exit_cd} -eq 0 ] && exit ${exit_cd}

./report5.sh 100 0 ; exit_cd=$?
[ ${exit_cd} -eq 0 ] && exit ${exit_cd}

echo "TEST2-1 completed"

# 2-2 : 第1引数or第2引数がマイナスの値
./report5.sh -100 10 ; exit_cd=$?
[ ${exit_cd} -eq 0 ] && exit ${exit_cd}

./report5.sh 100 -123 ; exit_cd=$?
[ ${exit_cd} -eq 0 ] && exit ${exit_cd}

echo "TEST2-2 completed"

# 2-3: 第1引数or第2引数が文字列
./report5.sh abc 10 ; exit_cd=$?
[ ${exit_cd} -eq 0 ] && exit ${exit_cd}

./report5.sh 100 test ; exit_cd=$?
[ ${exit_cd} -eq 0 ] && exit ${exit_cd}

echo "TEST2-3 completed"


########################################
# テスト3
# 正常動作確認
########################################
# 3-1 : 6と12を入力し、6が表示されなかったらエラー
result=$(./report5.sh 6 12)
if [ ${result} -eq 6 ]; then
    exit_cd=0
else
    echo "[ERROR] An error occurred(test3-1)"
    exit_cd=100
fi
[ ${exit_cd} -ne 0 ] && exit ${exit_cd}

echo "TEST3-1 completed"

echo "All tests finished successfully"

exit 0
