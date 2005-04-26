From: Greg Olszewski <noop@nwonknu.org>
Subject: Re: No Locate for User
Date: Tue, 26 Apr 2005 01:41:13 -0700
Message-ID: <426DFEA9.8060807@nwonknu.org>
References: <200504260729.j3Q7T28e001337@skyinet.net>	<426DF16A.4030505@nwonknu.org> <20050426162707.2c0e960b@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050426162707.2c0e960b@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:
> 
> drwxr-x---  2 heisspf root 80 2005-04-26 11:42 /var/lib/slocate
> 
ought to root:slocate (although current might be just fine) see below.

> 
> ls -l /var/lib/slocate/
> total 4180
> -rw-r-----  1 root slocate 4278159 2005-04-26 11:42 slocate.db
> 
should be fine.
> ls -ld /var/lib/slocate
> drwxr-x---  2 heisspf root 80 2005-04-26 11:42 /var/lib/slocate
> 
see above.
> 
>>If not, what does 'slocate -V' say?
> 
> 
> Secure Locate 2.7 - Released January 24, 2003
>  
Well, that makes me worry less. Same version and date that I'm 
experimenting with.

> 
>>How about
>>'ls -ld /var'
> 
> 
> drwxr-x---  2 heisspf root 80 2005-04-26 11:42 /var/lib/slocate
> 
that's not /var, it's /var/lib/slocate. No worries. for /var root:users 
or root:root 755 should be fine. /var/lib/slocate ought to be 
root:slocate 750. see above.

> In /etc/group
> slocate:x:21:users
> I added users
> 

That's not going to help. The last field is a list of users, not groups. 
It should be a moot point though, although it would be safer to remove 
it (in case some software doesn't handle a unlookable user name (users)).

> 
>>'ls -ld /var/lib'
> 
> 
> drwx------  24 root users 608 2005-03-21 09:43 /var/lib
>


There it is!

slocate can't get to /var/lib/slocate at all. It doesn't have permission 
to get to /var/lib, so it can't even see /var/lib/slocate.

my /var/lib is 0755 root:root

So I believe the following commands ought to make slocate happy (without 
breaking anything else (hope))

either
chmod 755 /var/lib (more likely to work)
or
chmod 750 /var/lib  (more paranoid)

chmod 755 /var (just in case)

chown root:slocate /var/lib/slocate
chmod 750 /var/lib/slocate

chmod 2775 /usr/bin/slocate
chown root:slocate /usr/bin/slocate

that ought to put your machine in a working (and relatively correct ) 
state. Hope I didn't miss anything.


hope this helps,

greg
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
