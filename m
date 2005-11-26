From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: CVS no such repository error..
Date: Sat, 26 Nov 2005 13:43:26 +0530
Message-ID: <3AEC1E10243A314391FE9C01CD65429B1BD0A1@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Dear RedHat users, 

I am trying to configure the CVS Server on RH 7.3 dist on i386. 
I am using the default cvs that comes with the RH 7.3 dist. 
I am resulting in the 'No repository' Error. 

I have followed the following steps as mention in the link to configure the cvs server & test it: http://owen.sj.ca.us/rkowen/howto/cvs.html#server <http://owen.sj.ca.us/rkowen/howto/cvs.html> 

	export CVSROOT=/usr/local/src/cvsroot
	cvs init

created users & grps:- 
	groupadd -g 8000 cvsgrp
	useradd -u 8000 -g cvsgrp -d /u/cvs -s /bin/sh -c "CVS Repository" -m cvs

Set the ownership of the $CVSROOT and set the setgid bit on the directory 
	chown -R cvs $CVSROOT
	chgrp -R cvsgrp $CVSROOT
	chmod -R g+s $CVSROOT

grep cvs /etc/services resulted with: 
	cvspserver 2401/tcp #CVS client/server operations
	cvspserver 2401/udp #CVS client/server operations

In /etc/xinetd.d I named a file cvspserver with: 
	service cvspserver
	{
	socket_type = stream
	protocol = tcp
	wait = no
	user = root
	passenv = 
	server = /usr/bin/cvs
	server_args = --allow-root=/usr/local/src/cvsroot pserver
	}

and issued: 
	# service xinetd reload

Create or edit the following files in $CVSROOT/CVSROOT 
readers added mukund, root to it

used htpasswd for creating entried of the file and appends each entry with ":cvs"
	htpasswd -c passwd pseudo_username

CVS server access from the same machine ona diffrentr terminal: 
	# cvs -d :pserver:root@cvshost:/usr/src/cvsroot login { where cvshost = 100.100.100.28, cvs server IP} 
	Logging in to :pserver:root@cvshost:2401/usr/src/cvsroot 
	CVS passwd: 
	/usr/src/cvsroot: no such repository 

Using the anonymous uses..... 
	cvs -d :pserver:anonymous@cvshost:/usr/src/cvsroot login { where cvshost = 100.100.100.28, cvs server IP} 
	Logging in to :pserver:root@cvshost:2401/usr/src/cvsroot 
	CVS passwd: << blank poasswd >> { as I did not assign any} 
	/usr/src/cvsroot: no such repository

Also, when I tried to

	# telnet 100.100.100.28 2401 
	Trying 100.100.100.28...
	Connected to 100.100.100.28 (100.100.100.28)
	Escape charecter is '^]'.
On pressing ENTER:
	cvs {pserver aborted]: bad auth protocol start:
	Connection closed by foreign host.

Can somene please explain me where exactly I am commiting the mistake?

Thanks & Regards, 
Mukund Jampala
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
