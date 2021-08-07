#!/bin/bash
########################################
# テスト1
# 引数の数を確認する
# 戻り値が0以外の場合はエラー
########################################
./report5.sh 1 10 100 ; exit_cd=$?
./report5.sh 1 ; exit_cd=$?
#[ ${exit_cd} -ne 0 ] && exit ${exit_cd}


########################################
# テスト2
# 引数が自然数か確認する
# 第1引数、第2引数のいずれかが自然数でない場合はエラー
########################################
# 2-1 : 引数に0が含まれる
./report5.sh 0 10
./report5.sh 100 0

# 2-2 : 引数にマイナスの値が含まれる
./report5.sh -100 10
./report5.sh 100 -123

# 2-3: 引数に文字列が含まれる
./report5.sh abc 10
./report5.sh 100 test


########################################
# テスト3
# 正常動作確認
########################################
# 3-1 : 6と12を入力し、6が表示されなかったらエラー
result=$(./report5.sh 6 12)
if [ ${result} -ne 6 ]; then
    echo "ERROR: An error occurred(test3-1)"
    exit_cd=100
fi

#echo "All test finished"

exit ${exit_cd}

