FROM hadoop:latest

ADD hdfs-site.xml $HADOOP_HOME/etc/hadoop/

# necessary before running namenode
RUN $HADOOP_HOME/bin/hdfs namenode -format

CMD $HADOOP_HOME/bin/hdfs namenode
