From: Ray Olszewski <ray@comarre.com>
Subject: Re: gnome-search-tool database updating
Date: Wed, 12 Feb 2003 08:26:40 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030212080530.0213a580@celine>
References: <5.1.0.14.1.20030211115354.020f95c0@celine>
 <5.1.0.14.1.20030211080840.020f3ba0@celine>
 <5.1.0.14.1.20030211080840.020f3ba0@celine>
 <5.1.0.14.1.20030211115354.020f95c0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302121401.h1CE1kFQ013620@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines --

First, updatedb *is* the command to update the locate database. I already 
told you this, so asking *me* again what command you are looking for is a 
pointless exercise. Either you believe I know what I'm saying or you don't. 
(I did qualify this by saying I assumed that slocate used the same database 
as locate. Not having slocate on my systems, I have no way to check this 
... but what does *its* man page tell you?)

Second, my reference to interpreting command-line switches by checking the 
man page was a specific response to your quoting a cron.daily script that 
ran the command updatedb, so there at least there was no ambiguity 
whatsoever about the command I was referring to.

Third, contrary to what you write below, you DID find a reference (either a 
script or an entry) to updatedb when you checked the cron scripts. 
Specifically, you wrote in a prior message:

>Indeed, cron.daily does have:
>
>renice +19 -p $$ >/dev/null 2>&1
>/usr/bin/updatedb -f "nfs,smbfs,ncpfs,proc,devpts" -e
>"/tmp,/var/tmp,/usr/tmp,/afs,/net"

This line, when executed, will run updatedb (assuming the app renice is 
present ... that just makes updatedb run at low priority, as I previously 
mentioned).

 From this limited report, it is unclear to me if cron.daily on your system 
is a single script or (as it is on mine) a directory containing many 
scripts. Either way, its contents will (almost surely) be run through an 
entry in /etc/crontab ... you can check that file to see what runs the 
script (the example I provided you was the command that runs it on my 
system; YMMV), then check your longs to see that *that* cron job runs.

Fourth, not knowing how you ran updatedb manually (what arguments?), or how 
you determined that you "wiped out the database", I can't be of specific 
help here. -IF- slocate works like locate, running it will not recreate the 
database ... that's what updatedb is for. You might see if the man page for 
updatedb on your system tells you where it normally creates the database 
file; my man page reports this as distribution dependent:

         "The database file to build.  Default  is  system-dependent.   In
               Debian GNU/Linux, the default is /var/lib/locate/locatedb."

Then see if the file is there and larger than 0 in size. (Or just use find 
to get its location.)

At 09:01 AM 2/12/03 -0500, Haines Brown wrote:
>Re. my effort to update the slocate database and figure out why that's
>not happening automatically.
>
> > My setup here looks quite different, but I think that is just
> > because Debian uses /etc/updatedb.conf, which contains a lot of the
> > stuff that your setup puts in command-line switches.
>
>Red Hat 8.0 has /etc/updatedb.conf:
>
>   PRUNEFS="devpts NFS nfs afs proc smbfs autofs auto iso9660"
>   PRUNEPATHS="/tmp /usr/tmp /var/tmp /afs /net"
>   export PRUNEFS
>   export PRUNEPATHS
>
> > Sorting out the details of command-line switches is just an RTFM
> > problem, though, which you can do as readily as I.
>
>Yes, but what command am I looking for? The man updatedb did not
>explicitly say it updated the database, but I was desperate and it
>sounded right, so ran it. The extensive disk activity suggested that
>maybe it was doing an update. There was no feedback.
>
>Or maybe it was just screwing up my system irreparably? I used to be a
>submariner, and the first thing you learn is never to turn a valve
>until you know very well what it does. But contrary to that wise
>attitude, I just went ahead anyway.
>
>So what was the result? The find utility no longer finds
>anything. Apparently I wiped out the database.
>
>My real aim was to find out why the update was not happening
>automatically.
>
> > >In any case, /var/log/cron does not have an entry fpr updatedb.
> >
> > It won't, becsuse cron (or anacron or whatever) is not running updatedb
> > *directly*. It is running a script that in turn runs updatedb. (On my
> > system, the relevant entry, in syslog (Debian uses different logging
> > defaults)  is  "Feb 11 06:25:01 waverly /USR/SBIN/CRON[11485]: (root) CMD
> > (test -e /usr/sbin/anacron || run-parts --report /etc/cron.daily)". 
> YMMV as
> > to the details, but start by checking /etc/crontab .
>
>Are you suggesting here that I should look into /etc/crontab.daily, etc.,
>and see if any of the scripts in this folder run updatedb? But that's
>where I started, and which led nowhere, since slocate.cron is
>apparently not the script, and no other script calls updatedb.
>
>But my concern now is to recover from my blunder. I suppose running
>slocate would recreate the database, but I have no idea which option
>settings are default, and without that, I'll just end up making
>matters worse.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
