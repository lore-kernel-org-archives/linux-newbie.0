From: Ray Olszewski <ray@comarre.com>
Subject: Re: SOLVED: Some users locked out of ssh and sftp?
Date: Tue, 15 Mar 2005 08:02:59 -0800
Message-ID: <5.1.0.14.1.20050315074423.02005bc8@celine>
References: <6667> <20050315092308.63122.qmail@web53603.mail.yahoo.com>
Mime-Version: 1.0
In-Reply-To: <20050315092308.63122.qmail@web53603.mail.yahoo.com>
References: <6667>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

If this still you, Eve, just from a different e-mail address? Or is this 
someone new with (almost) the same problem as Eve?

At 01:23 AM 3/15/2005 -0800, Donald Duckie wrote:

>I got this error message as shown below  . . .
>How do I change the /root/.ssh/known_hosts file?
>It seems encrypted . . .

Chuck identified the right first-pass fix here. To expand a bit: go into 
the known_hosts file (on the client end, NOT the server end), find the 
entry for the target sshd server's system (at the START of each long entry 
is one or more identifiers, which could be hostnames, FQDNs, or IP 
addresses ... look for 192.168.0.1) and simply delete it. Then your ssh 
client will see the connection attempt as a first connection to a new host 
and ask you to confirm it manually ... at which point it will do the 
required update to known_hosts for you.

The above may not work in your setup, though; as I read the man page, it is 
unclear how ssh handles new connections when set to "StrictHostKeyChecking 
Yes". If this does NOT work, I suggest a second approach below.


>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
>@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!
>    @
>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
>IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
>Someone could be eavesdropping on you right now
>(man-in-the-middle attack)!
>It is also possible that the RSA host key has just
>been changed.
>The fingerprint for the RSA key sent by the remote
>host is
>23:52:d4:e8:6a:75:72:ed:78:cb:31:1f:6a:ff:b4:ea.
>Please contact your system administrator.
>Add correct host key in /root/.ssh/known_hosts to get
>rid of this message.
>Offending key in /root/.ssh/known_hosts:7
>RSA host key for 192.168.0.1 has changed and you have
>requested strict checking.
>Host key verification failed.

What is causing your problem is that you (probably) have

         StrictHostKeyChecking Yes

in your ssh **client's** config file (/etc/ssh/ssh_config for systemwide 
settings,  $HOME/.ssh/config for user-specific setting). Change this 
setting to

         StrictHostKeyChecking Ask

and ssh will ask you if you want to update the key when it sees this sort 
of thing, which occurred either because you reinstalled sshd on the host in 
question (thereby generating a new server key in 
/etc/ssh/ssh_host_rsa_key), or you replaced the host at that hostname, 
FQDN, or IP address (whichever way you attempted to connect to it ... 
probably IP address, since the message refers to 192.168.0.1).


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
