From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Suggestions on Backups
Date: 07 Oct 2002 11:46:30 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1033987590.29089.45.camel@Zebra>
References: <001501c26ad9$11865920$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001501c26ad9$11865920$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Hmm, there are a lot of different things to consider for this. Many
people will give (and probably already have given) you their opinion as
to what is best. Just to add to the confusion, here are my thoughts on
these issues:

The concept of a "backup server" is fairly good. Because disk space is
so cheap, it's not all that costly to back up all the important data on
your network to disks in the backup server. How you define "important"
is up to you, but my approach is that I don't back up operating systems
or applications unless there is a very good reason. I make it clear to
everyone on my network that if they have any data on their local hard
drives, I take absolutely no responsibility for backing it up in any
way. I make space available on servers for people to store their work.
This is sometimes the home directory, and sometimes a more general
project directory (everyone who works on a particular project is
expected to store all work relating to that project in the same area).

I consider this to be vitally important. It means that my backups run to
about 150GB in total, and I reckon this will be about 200GB in about a
year. If I were to back up _everything_ on all the hard disks, the
backup would be about 300GB now, rising to probably over 400GB in about
a year. That's much more expensive!

Another approach is to make everyone store their work under a
predetermined folder on their windows drive (eg c:\Work). You can then
back up only that folder and below to ensure you have all their work
safe.

As to what programs to use: I currently use samba a lot to allow the
windows workstations to talk to the linux servers. Everyone's home dir
is stored on a linux server, but is made available using Samba so
windows thinks it's a windows server. This is typically mapped to their
"H:" drive, and I tell everyone to save their work to H or risk losing
it.

To back up the data, I currently have some scripts on the linux server
that runs the backups. This uses 'dump' to get the data onto tapes.
I want to improve this, for reasons of indexing and usability. I too
have just put in a big hard disk and have been experimenting with that
as a 'half-way' place for the backups. It works well, but I'm looking
now at using 'amanda' backup software, which would I think be much more
effective. Alternatively, if the backups are _really_ important and you
are not entirely confident about the "Do It Yourself" approach, you
could look at commercial backup software - Legato, Arcserve etc. But
they are not cheap; you could buy a second duplicate machine for the
same price, so think hard about it if you want to look at them.

df -h gives you spaces in MB or GB. If you want a bit more detail, df -k
gives you data in kb. For more info, read the manual page for df (man
df).


One note of caution: I have found that having one server running the
backups as well as doing a number of other important things, especially
email, can lead to problems. As an example: a few weeks ago a problem
developed with the scsi connection between my linux server and it's tape
drive. During the fixing of this, I had to reboot the server a number of
times. This caused a problem because there are some shared file systems
on that server (Not my doing, it was that way when I started here).
Every time there was a problem, I had to go and make sure the nobody was
using the shared space at that moment before I could shut down.
Because my backups were running of a server that did something else
important, everyone suffered some loss of service due to a problem with
backups. 

In short: I personally find it much better to have a backups server that
_only_ does backups, as faults have a less widespread impact. Obviously,
the more things that server does, the more things will fail if the
server breaks.

The spec machine you have is _capable_ of doing all the things you want
it to do, and there will be marginal impact on the performance. As to
whether it is a good idea to rely on one machine to do all those
important things - well, that's a matter of 'insurance planning.' Ask
yourself how much of a problem it would be for you if that machine
failed completely, and you couldn't get it running for, say, 3 days. If
the answer is "big problem" then you probably want to think about
getting another machine as well - probably of an identical spec, so that
if one failed completely, you could put all the functions on the other
while you fix the first one.


If you want to talk more about this stuff, email me direct (off the
list).

Paul F.

On Thu, 2002-10-03 at 13:33, Paul Kraus wrote:
> There are many different ways to approach backup schemes. I want to put
> in a 120gb Hard Drive in my Linux Server and then use it as a backup
> server. I have about 15 various windows workstations that I want to be
> able to backup there Documents and mail folders (mostly windows 98
> machines with a handful of windows XP Pro machines). I also have 1 XP
> Pro machines that has 30gb of data that I want to  have an exact mirror
> of on my Linux machine. This way if something goes wrong or is missing I
> will have an immediate restore with out any waiting at all the mirror
> only needs to be made current once a day. I also will have 1 Unix Server
> that I will need a backup of. With the UNIX machine it is absolutely
> necessary for me to have the backups maintain permissions and
> ownerships. I am not sure about the space on the UNIX machine. It is
> given in blocks and I don't really understand how blocks translate into
> MB's if someone could explain I would be most appreciative. 
> 
> df from OpenServer Machine
> --------------------------
> /         (/dev/root        ): 38308358 blocks  8622446 i-nodes
> /stand    (/dev/boot        ):     9352 blocks     3824 i-nodes
> 
> I realize that there are many ways I could do this. So I am not asking
> for step by step instructions. I am just wondering what programs you
> might use if you needed similar backups. How would some of you veteran
> Linux guys go about this problem.
> 
> I am using my Linux server as a Hylafax Fax server. I want to also use
> it as the backup server. I also intend to use it as a mail server. I
> want it to attach to my ISP (not on demand it is a constant DSL
> connection) and retrieve all of my companies email. I then want to be
> able to have my workstations attach to the server via network or remote
> dial up and get there mail via IMAP. I am not asking for help on this
> (yet) but I thought I would let you know what I want the server to be
> able to do. So my second question is should I get a second server or can
> this one machine handle all of this.
> 
> Server Information / User Base
> ------------------------------
> This server will only be backing up / email for 15-20 people.
> OS				: 	RedHat 7.3 / 2.4.18-3
> CPU				:	Intel Pent III 1133MHz
> MEM				:	256 Mb
> 
> 
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
