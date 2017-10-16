#!/usr/bin/env bash

function install_jdk()
{
    JDK_VERSION="8"
    JDK_PATH="/usr/lib/jvm/java-$JDK_VERSION-openjdk-amd64"

    add-apt-repository -y ppa:openjdk-r/ppa &&
    apt-get update &&
    apt-get install -y "openjdk-$JDK_VERSION-jdk" #&&
#    check_jdk_installation_directory &&
#    set_up_java_home &&
#    set_up_path_java
}

#function check_jdk_installation_directory()
#{
#    if [ ! -d JDK_PATH ]; then
#        echo "Directory does not exits $JDK_PATH"
#        return 1
#    fi
#
#    if [ ! -d "$JDK_PATH/jre" ]; then
#        echo "Directory does not exits $JDK_PATH/jre"
#        return 1
#    fi
#
#    return 0
#}
#
#function set_up_java_home()
#{
#    grep "export JAVA_HOME=$JDK_PATH" /home/vagrant/.bashrc || echo "export JAVA_HOME=$JDK_PATH" >> /home/vagrant/.bashrc
#}
#
#function set_up_path_java()
#{
#    grep "export PATH=\$JAVA_HOME/bin:\$JAVA_HOME/jre/bin:\$PATH" /home/vagrant/.bashrc || echo "export PATH=\$JAVA_HOME/bin:\$JAVA_HOME/jre/bin:\$PATH" >> /home/vagrant/.bashrc
#}
