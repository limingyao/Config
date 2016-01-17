export HADOOP_INSTALL=/home/limingyao/hadoop-2.6.3
export HADOOP_HOME=$HADOOP_INSTALL
export HADOOP_PREFIX=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

export YARN_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop

export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

alias start-cluster='cd /home/limingyao/hadoop-2.6.3 && ./sbin/start-dfs.sh && ./sbin/start-yarn.sh && ./sbin/yarn-daemon.sh start proxyserver && ./sbin/mr-jobhistory-daemon.sh start historyserver'
alias stop-cluster='cd /home/limingyao/hadoop-2.6.3 && ./sbin/stop-yarn.sh && ./sbin/mr-jobhistory-daemon.sh stop historyserver && ./sbin/stop-dfs.sh'
alias scp-cluster='cd /home/limingyao/script && sh batch_scp.sh /home/limingyao/hadoop-2.6.3/ /home/limingyao/'
