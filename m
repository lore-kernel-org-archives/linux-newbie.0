From: Ray Olszewski <ray@comarre.com>
Subject: RE: Some users locked out of ssh and sftp?
Date: Fri, 11 Mar 2005 16:15:17 -0800
Message-ID: <5.1.0.14.1.20050311152407.01f6ecc0@celine>
References: <200503011926.04903.eric@cisu.net> <00be01c5268d$8e50a060$4f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <00be01c5268d$8e50a060$4f0aa8c0@lanadmin>
References: <200503011926.04903.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Yeah, Eve, details help a lot. My memory of your earlier postings on this 
is a bit hazy, so I may be dragging you through something you've already 
tried. If so, I'm sorry. But based on the fresh info, I have a couple of 
suggestions, provided below.

At 05:56 PM 3/11/2005 -0500, Eve Atley wrote:

>Ok, let me see if I can narrow the problem down a bit. Using the GUI panel,
>I first create a user and password combination - let's use jean / password1.
>This autocreates a user home directory (jean) and gives them a bash shell
>(in this case).
>
>Then, via terminal, I 'useradd jean'. Following this, I 'smbpasswd -a jean'
>and enter the password as prompted (twice). I return to the GUI and uncheck
>all account expiration, just in case. I then set the user up with access to
>the groups she should be permitted to (via the GUI).
>
>Now, I'm set up this way (eve), as is user Keyur (keyur) and Gagan (gagan).
>I just set up Jean (jean) this way. Gagan and I can log in; neither of us
>have a .ssh file located anywhere that we know of, for ourselves.

See the end of the message on this bit.

>Keyur and
>Jean cannot, they are prompted for a session password. Gagan and I never are
>prompted for such.

OK. Now though you call it a "session" password, this is just the same 
password that the user has already entered in as "password1" (from below). 
Right?

As you've described the test, it sounds like a different client-side host 
(Windows workstation) is uniquely associated with each userid. So you want 
to figure out if the problem is associated with a subset of userids or with 
a subset of hosts. See if you can, from a workstation that logs in eve 
without a password request, log in as jean without getting a follow-on 
password prompt. If yes, the problem is with client configuration, not 
server configuration or account creation.

I just downloaded Winscp3 and tested it out. (Nice app, BTW ... nicer 
interface than the putty scp app I've occasionally used.) What I found is ...

         ... if I enter the correct password in the password box, then it 
logs me on without any fuss.

         ... if I enter the wrong password in the password box, then it 
prompts me for a password (probably what you call the "session" password).

So the first thing to do is verify that the passwords entered into the 
Winscp3 "Session" dialog is correct, not mistyped. Windows users sometimes 
forget, for example, that Unix-style passwords are case-sensitive ... since 
so much on Windows systems is not case sensitive.

Second, still in Winscp3, check in Advanced Options->Authentication and 
make sure "Attempt keyboard-active authentication" and "Respond with 
password to the first prompt" are both checked.

Third, still in Winscp3, check in SSH to make sure SSH2 is the only, or at 
least the preferred, connection method.

Furth, check for any other differences in Winscp3 setup. I didn't see any 
other promising candidates when I looked at the app, but you never know (at 
least not when you've used the app only for 10 minutes, as I have).

Last, I've assumed we are in all cases talking about connecting to the same 
server. You certainly seem to be saying that.  But if I've misunderstood 
you ... might there be differences in the sshd implementations between 
servers that do and do not prompt for the password? This could be an SSH1 
versus SSH2 issue, for example.

>We log in using Winscp3. Locally, as an example, we put in address
>192.168.10.x, port 22, username: jean, password: password1. For most of us
>(I give only 3 examples here), the login is successful. No session password
>needed.
>
> > (BTW, what do you mean by "network" username/password? Does this host
>
>We have it set up so that once the user is logged into his computer with
>his/her user/pass combo, then accessing the network via samba uses the same
>credentials. Therefore, user/pass combo is same on Windows logon as well as
>Samba.
>
> > (Also, you say "most others" can log in. Is this just caution in
> > reporting, or do you have other reports of unexplained failures?)
>
>See above.
>
> >Check the permissions on his/her ~/.ssh directory. If the permissions
>somehow
>
>Again, I see no .ssh directory, at least not for /home/keyur, /home/gagan,
>/home/jean or /home/eve.

To see directories that begin with a . character (other than . and ..), you 
have to use the -a flag with ls. But on my systems, these directories only 
hold host keys for systems the account connects to (not from), so you may 
not have them (I don't know, since I don't use user keys to authenticate, 
and I don''t recall where sshd puts them, though the man page seems to say 
they go in  $HOME/.ssh/authorized_keys).


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
