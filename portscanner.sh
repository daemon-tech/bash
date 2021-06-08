for ip in {1..154}
do for p in {22, 80, 443, 3306, 3389};
    do (echo >/dev/tcp/10.10.10.$ip/$p) >& /dev/null \
    && echo "10.10.10.$ip:$p is open";
    done;
done