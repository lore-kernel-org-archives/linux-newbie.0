From: Ray Olszewski <ray@comarre.com>
Subject: Re: No Locate for User
Date: Mon, 25 Apr 2005 09:40:17 -0700
Message-ID: <426D1D71.6060706@comarre.com>
References: <200504250427.j3P4R6J5000324@skyinet.net>	<426C7ABC.3000007@comarre.com> <20050425161131.5192b7e9@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050425161131.5192b7e9@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux <linux-newbie@vger.kernel.org>

Peter wrote:
[...]

>>I don't know why ... that is, how ... your Fedora host works with these 
>>permissions, but I'm not surprised that your Slackware host presents 
>>problems with them. On Debian, the corresponding file (in a different 
>>location, but the functional equivalent) is mode 644, the mode you'd 
>>expect for a file that is to be readable by all users:
>>
>>  ray@kuryakin:~$ ls -l /var/cache/locate/locatedb
>>  -rw-r--r--  1 root root 1089123 Apr 24 06:25 /var/cache/locate/locatedb
>>
>>So try changing the mode to 644 with chmod. Or try adding all users who 
>>need to use locate to the group slocate (in /etc/group ... perhaps 
>>Fedora uses this trick to make locate work in mode 640?).
>>
> Since I am using Linux beginning with ReaHat 5.1 then later switching to
> slackware I always used "locate" as user and never bothered to look at the
> permission of /var/lib/slocate since there was obviously no need.
> 
> Before I posted this mail I tried various permission for slocate even my user
> name as owner and get the same error: Permission denied.
> 
> That's why I am at a loss. I checked the dropline forum and could not find a
> reference. Might have to post one.

It is always difficult to give advice in response to an incomplete 
problem description. I suggested changing the mode because you did not 
mention having done so in your first report. From what you just wrote 
this time ("I tried various permission for slocate"), I *still* cannot 
tell if you tried what I actually suggested -- using chmod to set the 
database file (slocate.db) to mode 644.

Also, I am unclear as to what you tried changing the mode of. The issue 
is NOT with the directory "/var/lib/slocate". It is with the file 
"/var/lib/slocate/slocate.db". Since you say you tried things with 
"slocate" rather than "slocate.db", I am uncertain as to which of the 
two you were modifying.

So ... I suggest you try running (as root) this specific command:

	chmod 644 /var/lib/slocate/slocate.db

Then run "ls -l /var/lib/slocate/slocate.db" to make sure the change 
took effect.

Then, as an ordinary user, attempt to run the "locate" command and see 
if the error persists.

If it does not, this is your fix. (Though you may need to confirm that a 
run of "updatedb" preserves the 644 permissions.)

If it does, then round up the usual suspects:

	ls -l /var/lib/slocate/slocate.db
	ls -l /usr/bin/locate  (or wherever Slackware puts it)
	ldd /usr/bin/locate

And, as you did before, quote the actual command you ran and the actual, 
exact error message you got.

See if the Dropline install affected any of the libs identified by the 
second command. (You'll recall at the time of your first problem my 
expressing skepticism that someone on the Dropline list could assure you 
that xmms was the "only" app affected ... ANY change to libc6 can be 
far-reaching.)

Also check "ls -l /usr/bin/locate" on the Fedora host ... I'm still 
curious as to how it manages to use mode 640, so I (and you) want to see 
if it is doing something with the suid or sgid bit that the Slackware 
version is no longer doing.

(BTW, can some Slackware user here with a working locate command run "ls 
-l /usr/bin/locate" and "ls -l /var/lib/slocate/slocate.db" and post the 
results, so Peter can see what a working Slackware system is *supposed* 
to look like?)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
