From: Ray Olszewski <ray@comarre.com>
Subject: Re: setting my path
Date: Mon, 08 Sep 2003 11:21:01 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030908110209.02054c00@celine>
References: <HBEJLOFMLEPBMAAEFNFDKEHGCBAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDKEHGCBAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:35 AM 9/8/2003 -0600, Anna G. Zapata wrote:
>Hello,
>
>I am running Red Hat 8.0.  When I run ifconfig as a user, I cannot see what
>the IP address is of my box.  However, when I switch to being a root user
>(su -) and run ifconfig, I can see the IP address.  How do I set my $PATH so
>I can run ifconfig as a regular user?  Or is this possible?
>
>Here is the user path:
>
>-bash: /usr/local/bin:/bin:/usr/bin:/usr/X11R6/bin:/home/azapata/bin
>
>Root path:
>
>-bash:
>/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin/X11:/u
>sr/X11R6/bin:/root/bin
>
>Let me know if I am missing any useful information.


When you say "cannot see", I assume you mean you get a response like this one:

         autovcr@kuryakin:~$ ifconfig
         -bash: ifconfig: command not found

(If I've misinterpreted your question, the rest of this response is 
irrelevant and you need to ask your question again, explaining what "cannot 
see" means.)

Normally, ifconfig is in /sbin, which is in root's PATH but not non-root 
users'  default PATH. The easiest solution is simply to run the command as:

         autovcr@kuryakin:~$ /sbin/ifconfig

which will cause it to execute just fine.

Second option: add a symlink in (probably) /bin to ifconfig, so the normal 
default PATH for non-root users will execute ifconfig via the symlink.

Third option: add /sbin to non-root PATHs. How you do that depends a bit on 
where RH8.0 gets its PATH info from, something I don't know offhand. 
Probably you need to edit the PATH line in /etc/profile &/or the one for 
non-root users in /etc/login.defs .



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
