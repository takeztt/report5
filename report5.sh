#!/bin/bash
########################################################
# Environment Variables
########################################################
argnum=$#  # 引数の個数
arg1=$1    # 第1引数の値
arg2=$2    # 第2引数の値
exit_cd=0  # 終了コード


########################################################
# Define Functions
########################################################
euclidean_algo(){
    #ユークリッドの互除法で最大公約数を求める
    n1=$1
    n2=$2
    while [ ${n2} -ne 0 ]
    do
        r=$((${n1} % ${n2}))
        n1=${n2}
        n2=${r}
    done
    
    # 最大公約数を出力
    echo ${n1}
}

is_naturalnum(){
    # 引数が自然数であることを確認する
    # 　　自然数の場合 : 戻り値(0)
    # 　　自然数以外   : 戻り値(1)
    echo $1 | grep -E '^[1-9][0-9]*$' > /dev/null
    if [ $? -eq 0 ]; then
        return 0
    else
        return 1
    fi
}

check_argnum(){
    # 引数の数が2か確認する
    # 　　引数の数が2の場合 　　　: 戻り値(0)
    # 　　引数の数が2以外の場合   : 戻り値(2)
    if [ $1 -eq 2 ]; then
        return 0
    else
        return 2
    fi
}


#############################################################
# Main
#############################################################
# 引数の数をチェック
check_argnum ${argnum}
exit_cd=$?
#echo "check_argnum: ${exit_cd}"
if [ ${exit_cd} -ne 0 ]; then
    echo "ERROR: wrong number of arguments(given ${argnum}, expected 2)"
    exit ${exit_cd}
fi

# 引数が自然数かチェック(第1引数)
is_naturalnum ${arg1}
exit_cd=$?
#echo "is_naturalnum(arg1): ${exit_cd}"
if [ ${exit_cd} -ne 0 ]; then
    echo "ERROR: Arg1(${arg1}) is Not natural number"
    exit ${exit_cd}
fi

# 引数が自然数かチェック(第2引数)
is_naturalnum ${arg2}
exit_cd=$?
#echo "is_naturalnum(arg2): ${exit_cd}"
if [ ${exit_cd} -ne 0 ]; then
    echo "ERROR: Arg2(${arg2}) is Not natural number"
    exit ${exit_cd}
fi

# 最大公約数を出力
euclidean_algo $1 $2

exit ${exit_cd}
