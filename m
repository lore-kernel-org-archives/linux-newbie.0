From: Ray Olszewski <ray@comarre.com>
Subject: Re: Some users locked out of ssh and sftp?
Date: Tue, 01 Mar 2005 08:59:33 -0800
Message-ID: <5.1.0.14.1.20050301083357.01f4e340@celine>
References: <5.1.0.14.1.20050228220147.01f4dec8@celine> <20050301162252.34857.qmail@web53710.mail.yahoo.com>
Mime-Version: 1.0
In-Reply-To: <20050301162252.34857.qmail@web53710.mail.yahoo.com>
References: <5.1.0.14.1.20050228220147.01f4dec8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:22 AM 3/1/2005 -0800, Eve Emshoff wrote:

>This isn't making sense to me. I have users logging in
>via SSH to a redhat linux box using their network
>username/password. I'm able to do it as are most
>others, either locally or remotely. ie:
>
>ssh -l eve <ipaddress>
>or
>sftp eve@<ipaddress>
>
>Thus far, I've run across 1 user who can't sftp OR
>SSH. He's entirely locked out, despite having the
>correct username and password. He appears to be set up
>the same as well the others.
>
>Is there a file or some such I should edit and/or
>check to ensure he can get access? Anything to point
>me to in terms of what I can check in that he may
>*not* be set up the same as everyone else?


Ok. First thing to do is get his password and make sure that *you* can ssh 
in using the same userid and password he is using. If you can, then you are 
either seeing some sort of user error or a problem associated with the site 
he is trying to connect *from*. (It's hard to come up with an example of 
the second, but I can imagine that an ISP might block traffic to port 22 
for some reason that does not occur to me ... although if "entirely locked 
out" means he is prompted for a password, then rejected, that example does 
not apply.)

(BTW, what do you mean by "network" username/password? Does this host use 
something other than the standard files /etc/passwd and /etc/shadow for 
userid and password? For example, is NIS involved somehow, or some LDAP 
gimmickry? If so, and if you decide to post a followup, please clarify this 
part.)

(Also, you say "most others" can log in. Is this just caution in reporting, 
or do you have other reports of unexplained failures?)

If you can log in and you want to explore the possibility that the problem 
is NOT user error, then to get help here you'll need to say more about the 
failure he is seeing.

Once you've verified for yourself that the userid/password combo does not 
work for you either, first check that this userid/password combo can do a 
normal shell login. If it can't, try (as root) chainging the password, to 
see if the problem is nothing more than the user having misremembered his 
password. Also check his entry in /etc/passwd to make sure a valid shell 
(/bin/bash, usually) is provided ... it has to be something listed in 
/etc/shells .

If the ssh problem remains after a password change (but the local login 
problem is fixed, or if local logins always worked so you skipped this 
step), the check the sshd config file (not sure where Red Hat keeps this, 
but maybe /etc/ssh/sshd_config ... that's where Debian puts it, anyway) and 
see if something there is interfering. For example, the entry

         PermitRootLogin no

blocks root logins via ssh. More generally, the entries

         AllowUsers

and

         DenyUsers

followed by a pattern or list can restrict which userids are allowed or 
forbidden to ssh in.

These are the easy examples. There is too much more to say ... read the man 
page for sshd_config if you want a general intro ... without a more 
specific indication of what the problem actually looks like (more than 
"entirely locked out", I mean), which could narrow the possibilities.

I've focused on ssh here because it is a bit easier to troubleshoot. But 
all the same considerations should apply to sftp as well ... that is, once 
you get ssh logins working, sftp should also work ... they use the same 
authentication mechanism and tunneling.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
