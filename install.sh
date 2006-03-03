#!/bin/sh
# Installation script for the OSSEC HIDS
# Author: Daniel B. Cid <daniel.cid@gmail.com>
# Last modification: Mar 02, 2006


### Looking up for the execution directory
LOCAL=`dirname $0`;
cd $LOCAL

### Looking for for echo -n
ECHO="echo -n"
echo -n "a" > /dev/null 2>&1
if [ ! $? = 0 ]; then
    ECHO=echo
fi    

. ./src/init/shared.sh
. ./src/init/language.sh
. ./src/init/functions.sh
. ./src/init/init.sh
. ./etc/templates/en/messages.txt




##########
# install()
##########
Install()
{
	echo ""
	echo "5- ${installing}"
    
	echo "DIR=\"${INSTALLDIR}\"" > ${LOCATION}
    echo "CC=${CC}" >> ${LOCATION}
    
    # Changing Config.OS with the new C flags
    echo "CEXTRA=${CEXTRA}" > ./src/Config.OS
    
    # Makefile
	echo " - ${runningmake}"
    cd ./src
    make all
    
    if [ $? != 0 ]; then
        catError "0x5-build"
    fi
        
    # Building everything    
    make build
    
    # Making the right installation type
	if [ "X$INSTYPE" = "Xserver" ]; then
		make server
	
    elif [ "X$INSTYPE" = "Xclient" ]; then 
		make agent

    elif [ "X$INSTYPE" = "Xlocal" ]; then
        make server    
	fi

    
    # Calling the init script  to start ossec hids during boot
    runInit
    if [ $? = 1 ]; then
        notmodified="yes"
    fi    
    	
    cd ../
}




##########
# UseSyscheck()
##########
UseSyscheck()
{

    # Integrity check config
    echo ""
    $ECHO "  3.2- ${runsyscheck}?(yes/no)y"
    read AS
    echo ""
    case $AS in
        n|N|no|No|NO)
            echo "   - ${nosyscheck}"
            ;;
        *)
            SYSCHECK="yes"
            echo "   -${yessyscheck}"
            ;;
    esac                    

    # Adding to the config file
    if [ "X$SYSCHECK" = "Xyes" ]; then
        echo "" >> $NEWCONFIG
        cat ${SYSCHECK_TEMPLATE} >> $NEWCONFIG
    fi
}




##########
# UseRootcheck()
##########
UseRootcheck()
{

    # Rootkit detection configuration 
    echo ""
    $ECHO "  3.3- ${runrootcheck}(yes/no)y"
    read ES
    echo ""
    case $ES in
        n|N|no|No|NO)
            echo "   - ${norootcheck}"
            ;;
        *)
            ROOTCHECK="yes"
            echo "   - ${yesrootcheck}"
            ;;
    esac


    # Adding to the config file
    if [ "X$ROOTCHECK" = "Xyes" ]; then
        echo "" >> $NEWCONFIG
        echo "<rootcheck>" >> $NEWCONFIG
        echo "  <notify>queue</notify>" >> $NEWCONFIG
        echo "  <rootkit_files>$INSTALLDIR/etc/shared/rootkit_files.txt</rootkit_files>" >> $NEWCONFIG
        echo "  <rootkit_trojans>$INSTALLDIR/etc/shared/rootkit_trojans.txt</rootkit_trojans>" >> $NEWCONFIG
        echo "</rootcheck>" >> $NEWCONFIG
    fi            
}




##########
# SetupLogs()
##########
SetupLogs()
{

    NB=$1
    echo ""
    echo "  $NB- ${readlogs}"

    LOG_FILES="/var/log/messages /var/log/authlog /var/log/auth.log /var/log/secure /var/log/syslog /var/log/ipfilter.log /var/adm/ipsec.log"

    for i in ${LOG_FILES}; do
        # If log file present, add it    
        ls $i > /dev/null 2>&1
        if [ $? = 0 ]; then
            echo "    -- $i"
	        echo "" >> $NEWCONFIG
	        echo "<localfile>" >> $NEWCONFIG
    	    echo "  <log_format>syslog</log_format>" >> $NEWCONFIG
	        echo "  <location>$i</location>" >>$NEWCONFIG
	        echo "</localfile>" >> $NEWCONFIG
        fi
    done    

    # Getting snort files
    SNORT_FILES="/var/log/snort/alert"
    for i in ${SNORT_FILES}; do
        ls $i > /dev/null 2>&1
        if [ $? = 0 ]; then
            echo "" >> $NEWCONFIG
            echo "<localfile>" >> $NEWCONFIG
            
            head -n 1 $i|grep "\[**\] "|grep -v "Classification:" > /dev/null
            if [ $? = 0 ]; then
                echo "  <log_format>snort-full</log_format>" >> $NEWCONFIG
                echo "    -- $i (snort-full file)"
            else
                echo "  <log_format>snort-fast</log_format>" >> $NEWCONFIG
                echo "    -- $i (snort-fast file)"
            fi
            echo "  <location>$i</location>" >>$NEWCONFIG
            echo "</localfile>" >> $NEWCONFIG    
        fi
    done    
    
    # Getting apache logs
    APACHE_FILES="/var/log/apache/error.log /var/log/apache/error_log /var/log/apache/access.log /var/log/apache/access_log /var/www/logs/access_log /var/www/logs/error_log"
    for i in ${APACHE_FILES}; do
        ls $i > /dev/null 2>&1
        if [ $? = 0 ]; then
          echo "" >> $NEWCONFIG
          echo "<localfile>" >> $NEWCONFIG
          echo "  <log_format>apache</log_format>" >> $NEWCONFIG
          echo "  <location>$i</location>" >>$NEWCONFIG
          echo "</localfile>" >> $NEWCONFIG
          
          echo "    -- $i (apache log)"
        fi
    done
   
    echo "" 
    catMsg "0x106-logs"
	read ANY
}




##########
# ConfigureClient()
##########
ConfigureClient()
{
	echo ""
	echo "3- ${configuring} $NAME."
	echo ""
	echo ""
	echo "  3.1- ${serverip}"
	    read IP
	    echo ""
	    echo "   - ${addingip} $IP"
	    echo ""

	echo "<client>" > $NEWCONFIG
	echo "  <server-ip>$IP</server-ip>" >> $NEWCONFIG
	echo "</client>" >> $NEWCONFIG

    # Syscheck?
    UseSyscheck

    # Rootcheck?
    UseRootcheck


    # Set up the log files
    SetupLogs "3.4"
                       
	
}




##########
# ConfigureServer()
##########
ConfigureServer()
{
	echo ""
	echo "3- ${configuring} $NAME."
	
    
    # Configuring e-mail notification
	echo ""
	echo "  3.1- ${mailnotify} (y/n)y"
	read ANSWER
	case $ANSWER in
		n|N)
			echo "   --- ${nomail} "
			EMAILNOTIFY="no"
			;;
		*)
			EMAILNOTIFY="yes"
			$ECHO "   - ${whatsemail} "
			read EMAIL
            ls ${HOST_CMD} > /dev/null 2>&1
            if [ $? = 0 ]; then
              HOSTTMP=`${HOST_CMD} -W 5 -t mx ossec.net 2>/dev/null`
              if [ $? = 1 ]; then
                 # Trying without the -W 
                 HOSTTMP=`${HOST_CMD} -t mx ossec.net 2>/dev/null`
              fi       
              if [ "X$HOSTTMP" = "X${OSSECMX}" -o "X$HOSTTMP" = "X${OSSECMX2}" ];then
                 # Breaking down the user e-mail
                 EMAILHOST=`echo ${EMAIL} | cut -d "@" -f 2`
                 if [ "X${EMAILHOST}" = "Xlocalhost" ]; then
                    SMTPHOST="127.0.0.1"
                 else       
                    HOSTTMP=`${HOST_CMD} -W 5 -t mx ${EMAILHOST}`
                    SMTPHOST=`echo ${HOSTTMP} | cut -d " " -f 7`
                 fi   
              fi    
            fi

            if [ "X${SMTPHOST}" != "X" ]; then
               echo ""
               echo "   - ${yoursmtp}: ${SMTPHOST}"
               $ECHO "   - ${usesmtp} (y/n)y"
               read EMAIL2
               case ${EMAIL2} in
                  n|N|no|No|NO)
                     echo ""
                     SMTP=""
                     ;;
                  *)
                     SMTP=${SMTPHOST}
                     echo "   --- ${usingsmtp} ${SMTP}"   
                     echo ""
                     ;;
               esac
            fi

            if [ "X${SMTP}" = "X" ]; then
			   echo "   - ${whatsmtp} "
               read SMTP
            fi   
			;;
	esac


	# Writting global parameters 
	echo "<global>" > $NEWCONFIG
	if [ "$EMAILNOTIFY" = "yes" ]; then
		echo "  <email_notification>yes</email_notification>" >> $NEWCONFIG
		echo "  <email_to>$EMAIL</email_to>" >> $NEWCONFIG
		echo "  <smtp_server>$SMTP</smtp_server>" >> $NEWCONFIG
		echo "  <email_from>ossect@${HOST}</email_from>" >> $NEWCONFIG
	else
		echo "  <email_notification>no</email_notification>" >> $NEWCONFIG
	fi
        echo "  <white_list>127.0.0.1</white_list>" >> $NEWCONFIG
        for ip in ${NAMESERVERS} ${NAMESERVERS2};
        do
            if [ "X${ip}" != "X" ]; then
              echo "  <white_list>${ip}</white_list>" >>$NEWCONFIG
            fi
        done
	echo "</global>" >> $NEWCONFIG
	echo "" >> $NEWCONFIG


	# Writting rules configuration
	echo "<rules>" >> $NEWCONFIG
    echo "  <include>rules_config.xml</include> ">> $NEWCONFIG
	echo "  <include>syslog_rules.xml</include>" >> $NEWCONFIG
	echo "  <include>pix_rules.xml</include>" >> $NEWCONFIG
	echo "  <include>named_rules.xml</include>" >> $NEWCONFIG
	echo "  <include>proftpd_rules.xml</include>" >> $NEWCONFIG
    echo "  <include>apache_rules.xml</include>" >> $NEWCONFIG
    echo "  <include>ids_rules.xml</include>" >> $NEWCONFIG
    echo "  <include>squid_rules.xml</include>" >> $NEWCONFIG
	echo "</rules>" >> $NEWCONFIG
	echo "" >> $NEWCONFIG


    # Checking if syscheck should run
    UseSyscheck
  
    # Checking if rootcheck should run
    UseRootcheck


    # Active response
    catMsg "0x107-ar"
    
    read AR
    case $AR in
        n|N|no|No|NO)
            echo "   - ${noactive}."
            ;;
        *)
            ACTIVERESPONSE="yes"
            catMsg "0x108-ar-enabled"
            
            read HD
            case $HD in
                n|N|no|No|NO)
                    echo "     - ${nohosts}"
                    ;;
                *)    
                    echo "     - ${yeshosts} "
                    HOSTDENY="yes"
                    ;;
            esac
            echo ""
            echo "   - ${firewallar}(yes/no)y"
            read HD2
            case $HD2 in
                n|N|no|No|NO)
                    echo "     - ${nofirewall}"
                    ;;
                *)
                    echo "     - ${yesfirewall} "
                    FIREWALLDROP="yes"
                    ;;
            esac        
                        
            echo ""
            ;;
    esac                
    
    
    if [ "X$INSTYPE" = "Xserver" ]; then
      # Configuring remote syslog  
	  echo ""
	  echo "  3.5- ${syslog} (y/n)y"
	  read ANSWER
      case $ANSWER in
		n|N)
			echo "   --- ${nosyslog}"
			;;
		*)
			echo "   - ${yessyslog}"
			RLOG="yes"
			;;
	  esac

	  # Configuring remote connections
      SLOG="yes"
	fi
    
    
    
	if [ "X$RLOG" = "Xyes" ]; then
	echo "" >> $NEWCONFIG
	echo "<remote>" >> $NEWCONFIG
	echo "  <connection>syslog</connection>" >> $NEWCONFIG
	echo "</remote>" >> $NEWCONFIG
	fi

	if [ "X$SLOG" = "Xyes" ]; then
	echo "" >> $NEWCONFIG
	echo "<remote>" >> $NEWCONFIG
	echo "  <connection>secure</connection>" >> $NEWCONFIG
	echo "</remote>" >> $NEWCONFIG
	fi


	# Email/log alerts
	echo "" >> $NEWCONFIG
	echo "<alerts>" >> $NEWCONFIG
    echo "   <log>1</log>" >> $NEWCONFIG
    if [ "$EMAILNOTIFY" = "yes" ]; then
        echo "   <email_notification>7</email_notification>">> $NEWCONFIG
	fi
	echo "</alerts>" >> $NEWCONFIG


    if [ "X$ACTIVERESPONSE" = "Xyes" ]; then
        # Add commands in here
        echo "" >> $NEWCONFIG
        echo "<command>" >> $NEWCONFIG
        echo "  <name>host-deny</name>" >> $NEWCONFIG
        echo "  <executable>host-deny.sh</executable>" >> $NEWCONFIG
        echo "  <expect>srcip</expect>" >> $NEWCONFIG
	    echo "  <timeout_allowed>yes</timeout_allowed>" >> $NEWCONFIG
        echo "</command>" >> $NEWCONFIG
        
        echo "" >> $NEWCONFIG
        echo "<command>" >> $NEWCONFIG
        echo "  <name>firewall-drop</name>" >> $NEWCONFIG
        echo "  <executable>firewall-drop.sh</executable>" >> $NEWCONFIG
        echo "  <expect>srcip</expect>" >> $NEWCONFIG
	    echo "  <timeout_allowed>yes</timeout_allowed>" >> $NEWCONFIG
        echo "</command>" >> $NEWCONFIG
        
        echo "" >> $NEWCONFIG
        echo "<command>" >> $NEWCONFIG
        echo "  <name>disable-account</name>" >> $NEWCONFIG
        echo "  <executable>disable-account.sh</executable>" >> $NEWCONFIG
        echo "  <expect>user</expect>" >> $NEWCONFIG
	    echo "  <timeout_allowed>yes</timeout_allowed>" >> $NEWCONFIG
        echo "</command>" >> $NEWCONFIG
        
        if [ "X$HOSTDENY" = "Xyes" ]; then
            echo "" >> $NEWCONFIG
            echo "<active-response>" >> $NEWCONFIG
            echo "  <command>host-deny</command>" >> $NEWCONFIG
            echo "  <location>local</location>" >> $NEWCONFIG
            echo "  <level>6</level>" >> $NEWCONFIG
            echo "  <timeout>600</timeout>" >> $NEWCONFIG		
            echo "</active-response>" >> $NEWCONFIG
        fi
        
        if [ "X$FIREWALLDROP" = "Xyes" ]; then
            echo "" >> $NEWCONFIG
            echo "<active-response>" >> $NEWCONFIG
            echo "  <command>firewall-drop</command>" >> $NEWCONFIG
            echo "  <location>local</location>" >> $NEWCONFIG
            echo "  <level>6</level>" >> $NEWCONFIG
            echo "  <timeout>600</timeout>" >> $NEWCONFIG
            echo "</active-response>" >> $NEWCONFIG
        fi        
    fi
     
    # Setting up the logs
    SetupLogs "3.6"
}




##########
# setEnv()
##########
setEnv()
{
    echo ""
    echo "2- ${settingupenv}."
    echo ""
    echo " - ${wheretoinstall} [$INSTALLDIR]"
    read ANSWER
    if [ ! "X$ANSWER" = "X" ]; then
        INSTALLDIR=$ANSWER;
    fi

    CEXTRA="$CEXTRA -DDEFAULTDIR=\\\"${WORKDIR}\\\""
    
    echo "    - ${installat} ${INSTALLDIR}"
    

    if [ "X$INSTYPE" = "Xclient" ]; then
        CEXTRA="$CEXTRA -DCLIENT"
    elif [ "X$INSTYPE" = "Xlocal" ]; then
        CEXTRA="$CEXTRA -DLOCAL"    
    fi   

    ls $INSTALLDIR >/dev/null 2>&1
    if [ $? = 0 ]; then
        echo " - ${deletedir} (y/n)n"
        read ANSWER
        case $ANSWER in
            y|Y)
                rm -rf $INSTALLDIR
                ;;
        esac
    fi
}




##########
# checkDependencies()
# Thanks to gabriel@macacos.org
##########
checkDependencies()
{
    echo ""
    which gcc > /dev/null 2>&1
    if [ $? -ne "0" ]; then
        which cc > /dev/null 2>&1
        if [ $? -ne "0" ]; then
        catError "0x3-dependencies"
        fi
        CC="cc"
    else
        CC="gcc"
    fi
}



##########
# main()
##########
main()
{

    # Must be executed as ./install.sh
    if [ `isFile ${VERSION_FILE}` = "${FALSE}" ]; then
        catError "0x1-location";
    fi

    # Must be root
    if [ ! "X$ME" = "Xroot" ]; then
        catError "0x2-beroot";
    fi    

    # Checking dependencies
    checkDependencies

    clear
    

    # Initial message
    echo " $NAME $VERSION ${installscript} - http://www.ossec.net/hids/"
    
    catMsg "0x101-initial"

    echo "  - $system: $UNAME"
    echo "  - $user: $ME"
    echo "  - $host: $HOST"
    echo ""
    echo ""
    echo "  -- $hitanyorabort --"

    read ANY


    # Loop with the installation options
    while [ 1 ]
    do
        echo ""
        $ECHO "1- ${whattoinstall} "

        read ANSWER
        case $ANSWER in
            h|H|Help|help|HELP)
            catMsg "0x102-installhelp"
	        ;;
            
            echo ""
            server|Server|S|SERVER|s)
	        echo "  - ${serverchose}."
	        INSTYPE="server"
	        break;
	        ;;
            
            client|agent|Agent|Client|C|A|CLIENT|AGENT|c|a)
	        echo "  - ${agentchose}}."
	        INSTYPE="client"
	        break;
	        ;;
   
            local|Local|l|L|LOCAL)
            echo "  - ${localchose}." 
            INSTYPE="local"
            break;
            ;;
        esac
    done


    # Setting up the environment
    setEnv

    
    # Configuring the system (based on the installation type)
    
    if [ "X$INSTYPE" = "Xserver" ]; then	
        ConfigureServer
    elif [ "X$INSTYPE" = "Xclient" ]; then
        ConfigureClient
    elif [ "X$INSTYPE" = "Xlocal" ]; then
        ConfigureServer   
    else
        catError "0x4-installtype"
    fi

    # Installing (calls the respective script 
    # -- InstallAgent.sh pr InstallServer.sh
    Install

    
    # User messages
    echo ""
    echo ""
    echo ""
    echo ""
    echo " - ${configurationdone}."
    echo ""
    echo " - ${tostart}:"
    echo "		$WORKDIR/bin/ossec-control start"
    echo ""
    echo " - ${tostop}:"
    echo "		$WORKDIR/bin/ossec-control stop"
    echo ""
    echo " - ${configat} $WORKDIR/etc/ossec.conf"
    echo ""


    catMsg "0x103-thanksforusing"


    read ANY

    if [ "X$INSTYPE" = "Xserver" ]; then
    echo ""        	
    echo " - ${addserveragent}."
    echo "   ${runma}."
    echo "   $INSTALLDIR/bin/manage_agents"
    echo "   ${moreinfo}"
    echo "   http://www.ossec.net/hids/doc.php\#ma"
    echo ""
      
    elif [ "X$INSTYPE" = "Xclient" ]; then
    catMsg "0x104-client"	
    echo "   $WORKDIR/bin/manage_agents"
    echo ""
    echo "   ${moreinfo}"
    echo "   http://www.ossec.net/hids/doc.php\#ma"
    echo ""
    echo " --- ${presskey} --- "

    read ANY
    fi

    if [ "X$notmodified" = "Xyes" ]; then
        catMsg "0x105-noboot"
        echo "		$WORKDIR/bin/ossec-control start" 
        echo ""
    fi
}




### Calling main function where everything happens
main

exit 0



## EOF ##
