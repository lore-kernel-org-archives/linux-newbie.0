From: =?ISO-8859-2?B?TWF0ZXVzeiCjb3Nrb3Q=?= <m.loskot@chello.pl>
Subject: searching a mail solution
Date: Sun, 19 May 2002 19:04:18 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <11924676928.20020519190418@chello.pl>
Reply-To: =?ISO-8859-2?B?TWF0ZXVzeiCjb3Nrb3Q=?= <m.loskot@chello.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hello All,

I have some idea and I have some questions:

I'm using "CABLE MODEM" internet connection, I mean I have a small box
(cable modem) which is connected with BNC cable comming from my ISP.
My ISP is a bit popular in Europe (Austria, Poland, Germany etc.).
It is called CHELLO.

So, this ISP doesn't allow to run any server services.
I know that I could run some servers (www, ftp, mail) with some tricks
;) in order to be not visible (my services) for my ISP.
Bay the way, could someone explain me, how to make services on my box
unvisible for  my ISP ?
I know that I can run, for example FTP server on different ports and
so on, but I think that my ISP can make some monitoring of SYN packets
going straigth to my server and check on which port someone try to
connect with my server.
What do you think, am I talking nonsense ?

But, as I said  on the start, I;m going to not use tricks ;)

My local home network structure looks like this:

3 machines: 1x linux (Slackware), 2x Windows.
Slackware runs as local network server: printer server, file server
(with big HDD), backup server, and masq & firewall .

So, me and my Wife works on 2 Windows machines, we have e-mail and www
accounts outside (in different ISP's).
As I said, we have'nt any server on Linux machine.

I have some idea:

I would like to treat my Linux as e-mail (pop3) server.
Linux is running 24 hours per day, so it could fetch mail from our
e-mail accounts and on windows machines, I could fetch e-mails
straight from my Linux server (it could runs POP3 server).
So, Linux may try to fetch e-mails every 15 minutes.
This solution could prevent my e-mail accounts (which I have in
different ISP's) to run out of free space, because my Linux (in my
home, fetches this e-mails).
When I'll send my e-mails, I will use SMTP servers from my ISP's
(outside my home network).
So, I have some question:

Could someone try to explain me what software should I install ?
I know that I have to install some POP3 server or/and fetchmail.

Any suggestions, piece of advice ???

Best regards,

--

Mateusz =A3oskot
E-mail: m.loskot@chello.pl
GG#: 792434

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
