From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: remote login for Red Hat 7.2
Date: Mon, 10 Jun 2002 18:12:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020611012204.ECTR19182.mtiwmhc21.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: jim@kc4hw.net, linux-newbie@vger.kernel.org

Two pieces I know of as a newbie:

you need a client on the machine you are going to connect from, I use a windows machine so I use putty which is free and can be found with google easily enough.

Then you need to have ssh running on your redhat box.

You might try first logging in at the console as a user.  Go superuser.  then change over to:

/etc/init.d  with cd /etc/init.d

then type ./sshd start

possibility you might have ssh already running  (btw I think sshd stands for secure shell daemon)

You have configure putty for port 22 and make sure you choose ssh for it's protocol.

Alan

 >>  I would like to be able to remote login into my Red Hat 7.2 via ssh. 
 >>  Don't 
 >>  really know where to start.  

 >>  Any help here.




Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
