From: Ray Olszewski <ray@comarre.com>
Subject: Re: searching a mail solution
Date: Sun, 19 May 2002 13:26:50 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020519202650.03d79ce0@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-2?B?TWF0ZXVzeiCjb3Nrb3Q=?= <m.loskot@chello.pl>, linux-newbie@vger.kernel.org

See below.

At 07:04 PM 5/19/02 +0200, =?ISO-8859-2?B?TWF0ZXVzeiCjb3Nrb3Q=?= wrote:
>Hello All,
>
>I have some idea and I have some questions:
>
>I'm using "CABLE MODEM" internet connection, I mean I have a small box
>(cable modem) which is connected with BNC cable comming from my ISP.
>My ISP is a bit popular in Europe (Austria, Poland, Germany etc.).
>It is called CHELLO.
>
>So, this ISP doesn't allow to run any server services.
>I know that I could run some servers (www, ftp, mail) with some tricks
>;) in order to be not visible (my services) for my ISP.
>Bay the way, could someone explain me, how to make services on my box
>unvisible for  my ISP ?
>I know that I can run, for example FTP server on different ports and
>so on, but I think that my ISP can make some monitoring of SYN packets
>going straigth to my server and check on which port someone try to
>connect with my server.
>What do you think, am I talking nonsense ?

You can't really make service "invisible", since, in order to be services,
the relevant clients need to find them. So a sufficiently attentive ISP will
find pretty much any service you run.

That said ... the *usual* practice of the ISPs I'm familiar with is to pay
attention only to the well-known ports of troublesome services, like http
and ftp. (I mean "troublesome" from their point of view ... services that
would actually *use* the bandwidth they charge you for.) So the usual
solution is to make the servies not invisible but unobtrusive, by running
them on non-standard ports.

How well this works depends on the service. For some, it makes the service
useless -- easy examples are SMTP and DNS. For othere, it creates only a
tiny inconvenience -- ssh is a good example, since few people would be using
it and you can simply tell them what port to use. Others are somewhere in
berween -- URLs for http and ftp servers can include a port number.

>But, as I said  on the start, I;m going to not use tricks ;)
>
>My local home network structure looks like this:
>
>3 machines: 1x linux (Slackware), 2x Windows.
>Slackware runs as local network server: printer server, file server
>(with big HDD), backup server, and masq & firewall .
>
>So, me and my Wife works on 2 Windows machines, we have e-mail and www
>accounts outside (in different ISP's).
>As I said, we have'nt any server on Linux machine.
>
>I have some idea:
>
>I would like to treat my Linux as e-mail (pop3) server.
>Linux is running 24 hours per day, so it could fetch mail from our
>e-mail accounts and on windows machines, I could fetch e-mails
>straight from my Linux server (it could runs POP3 server).
>So, Linux may try to fetch e-mails every 15 minutes.
>This solution could prevent my e-mail accounts (which I have in
>different ISP's) to run out of free space, because my Linux (in my
>home, fetches this e-mails).
>When I'll send my e-mails, I will use SMTP servers from my ISP's
>(outside my home network).
>So, I have some question:
>
>Could someone try to explain me what software should I install ?
>I know that I have to install some POP3 server or/and fetchmail.
>
>Any suggestions, piece of advice ???

You basically are right abotu what you need to run. I haven't done this in a
long time, so my memory is hazy, but I think you want 4 components:

1. fetchmail -- the POP3 **client** that will get your mail from external
POP3 servers for local redistribution.

2. sendmail, exim, or another SMTP server -- as I say, it's been awhile, but
I *think* fetchmail uses the local SMTP server to distribute the mail it
downloads to local accounts. In any case, you may want this to relay
outgoing mail to whatever outside SMTP forwarder(s) you use.

3. procmail -- you may or may not need this, depending on the complexity of
your outside mail setups. It will let you sort mail.

4. a POP3 or IMAP *server* -- to let the individual workstations get their
mail from the local Linux server. We use popa3d here, but for on-LAN uses,
where security isn't usually much of a concern, whatever default choice your
distro makes is probably fine.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
