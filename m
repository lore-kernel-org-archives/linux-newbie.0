From: Ray Olszewski <ray@comarre.com>
Subject: Re: safety/permissions
Date: Thu, 20 Mar 2003 09:15:36 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030320090342.01e81698@celine>
References: <5.1.0.14.1.20030318075020.01e7ffc0@celine>
 <5.1.0.14.1.20030317070035.01e74608@celine>
 <5.1.0.14.1.20030317070035.01e74608@celine>
 <5.1.0.14.1.20030318075020.01e7ffc0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1048179069.3e79f17dc1984@mail.rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Kurt Sys <Kurt.Sys@rug.ac.be>, linux-newbie@vger.kernel.org

OK, Kurt. To get help with these problems, you're going to need to describe 
them in a bit more detail.

First, *where* is "outside"? Is this system connected to the Internet, and 
you are trying to send mail to it from a place that is truly off-site? Or 
is "outside" another machine on the same LAN? Or something else? (You refer 
to your "Webmail" but do not say where that is coming from.)

Second, do you have qmail running in daemon mode? That is, is it (or is 
anything) listening on port 25? You can check this with "netstat -ln". You 
can also just check the process list to see if the daemon is running ("ps 
ax |grep qmail", assuming the daemon is either qmail or qmaild). OR you can 
try to telnet to port 25 on the host ansd see if you get a response 
("telnet [hostname] 25"). If nothing is listening on port 25, the mail 
cannot be delivered (and it might be queued for sending for as long as a 
week, depending on the practice at your Webmail site, so you might not know 
that this is the cause for quite some time).

Third, how is your Linux host connected to the Internet? Does it have a 
"real" (routable) IP address or a "private" (non-routable) one? If the 
latter, is whatever you are using to NAT the LAN allowing incoming SMTP 
traffic to reach the Linux server (different "whatevers" do this in 
different ways, but the generic concept is port forwarding)?

I don't ue fetchmail myself, so I can't really offer suggestions about 
where to begin looking into that particular problem. I don't even havet the 
man page installed locally, so I can't readily check if it needs a running 
SMTP daemon (anyone?) or if it starts up its own copy of your MTA.

At 05:51 PM 3/20/2003 +0100, Kurt Sys wrote:
>Eello again,
>
>I tried to make my homework as good as possible. I reinstalled 
>'everything', so
>all permissions are now default values, except the ones in my homedir. I was
>able to solve some (other) problems with qmail. Now, I can send mail using
>qmail. I can receive mail whenever I send a message from my machine to my
>machine (so local mail delivery is ok).
>I can not send a message from 'outside' (so I send from my webmail to my 
>'local'
>mailbox kurt@ksys.rug.ac.be) nor can I receive any messages present on a
>mail-server (allserv.rug.ac.be, which is not mine).
>If I send a message from my webmail (I consider this as 'mailing from another
>machine) to my local address, it's not delivered and I do not get an error
>message (yet, i.e. after a few hours). So, apparently, it tries to write to
>'somewhere', but it doesn't work. I can't find anything in my log-files.
>If I 'fetchmail' my mail from the webserver (so, the 'allerv.rug.ac.be'), it
>fetches that mail, but it doesn't deliver the mail. I know it fetches the mail
>since it is removed from the server if I don't set the 'keep'-value (which 
>keeps
>the mail on the server).
>
>So, my mail cannot be delivered if it comes from 'outside'. Permissions 
>are all
>'default' values, except the ones in my homedir. Now, I see nothing special
>about these (and very 'open'):
>755 for /home/kurt
>755 for /home/kurt/.mydata (where mail-files and 'inbox' is, after it is taken
>from /var/mail/kurt)
>755 for /home/kurt/.mydata/inbox (file with my mail)
>600 for /home/kurt/.fetchmailrc
[old stuff deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
