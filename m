From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Mounting Linux drive on Linux: error 21874
Date: Fri, 18 Feb 2005 18:31:25 -0500
Message-ID: <005301c51611$f6e16970$1f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050218150639.01ff9e28@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <5.1.0.14.1.20050218150639.01ff9e28@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hello again and thanks,

Trying this one:
mount -t smbfs -o
username=someusername,password=somepassword,workgroup=workgroup
//192.168.10.28/dev/hda3 /mnt/devbox
(perhaps this is incorrect syntax?)

And getting this:
Error connecting to 192.168.10.28 (No route to host)
23617: Connection to 192.168.10.28 failed
SMB connection failed

There *should* be a route to host, since I can SSH into the box. :) 'uname
-a' does indeed show the hostname as 'localhost'. The /etc/hosts file shows
the standard 127.0.0.1 localhost entry. And as the 'unofficial' sysadmin,
I'm sure of the system's username/password. So, I'm going out on a limb here
and guessing that maybe I should change the hostname so that uname reports
something other than localhost. 

If that's a good guess, what's the best way to go about it?

My only other guess is that Samba is not configured on 192.168.10.28...

Thanks,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
