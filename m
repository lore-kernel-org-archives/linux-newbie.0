From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Some users locked out of ssh and sftp?
Date: Fri, 11 Mar 2005 17:56:25 -0500
Message-ID: <00be01c5268d$8e50a060$4f0aa8c0@lanadmin>
References: <200503011926.04903.eric@cisu.net>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <200503011926.04903.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: eric@cisu.net
Cc: linux-newbie@vger.kernel.org


Ok, let me see if I can narrow the problem down a bit. Using the GUI panel,
I first create a user and password combination - let's use jean / password1.
This autocreates a user home directory (jean) and gives them a bash shell
(in this case). 

Then, via terminal, I 'useradd jean'. Following this, I 'smbpasswd -a jean'
and enter the password as prompted (twice). I return to the GUI and uncheck
all account expiration, just in case. I then set the user up with access to
the groups she should be permitted to (via the GUI).

Now, I'm set up this way (eve), as is user Keyur (keyur) and Gagan (gagan).
I just set up Jean (jean) this way. Gagan and I can log in; neither of us
have a .ssh file located anywhere that we know of, for ourselves. Keyur and
Jean cannot, they are prompted for a session password. Gagan and I never are
prompted for such.

We log in using Winscp3. Locally, as an example, we put in address
192.168.10.x, port 22, username: jean, password: password1. For most of us
(I give only 3 examples here), the login is successful. No session password
needed.

> (BTW, what do you mean by "network" username/password? Does this host 

We have it set up so that once the user is logged into his computer with
his/her user/pass combo, then accessing the network via samba uses the same
credentials. Therefore, user/pass combo is same on Windows logon as well as
Samba.

> (Also, you say "most others" can log in. Is this just caution in 
> reporting, or do you have other reports of unexplained failures?)

See above.

>Check the permissions on his/her ~/.ssh directory. If the permissions
somehow 

Again, I see no .ssh directory, at least not for /home/keyur, /home/gagan,
/home/jean or /home/eve.


- Eve

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
