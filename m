From: chuck gelm net <chuck@gelm.net>
Subject: Re: setgid: Operation not permitted
Date: Mon, 29 Dec 2003 13:41:56 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FF07574.9077E589@gelm.net>
References: <200312270820.hBR8Ked01366@skyinet.net>
	 <3FEE5A53.4010401@sancharnet.in> <5.1.0.14.1.20031229081228.01f1b6a8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks, Ray:

 I'll fill in some of the details that I left out.

* 'su' on the console works normally. See session below.

I am not familiar with 'su -'.  :-|

It is a telnet session from a windows workstation:
-------------------------------------------------
server login: gelmce
Password:
Linux 2.4.19.
Last login: Mon Dec 29 14:02:26 -0500 2003 on pts/0 from web.
No mail.
 
Pause for storage relocation.
 
gelmce@server:~$ su root
Password:
setgid: Operation not permitted
gelmce@server:~$ whoami
gelmce
-------------------------------------------------
I've not noticed that "Pause for storage relocation."
message before.  I wonder what it means.

> 3. Are any relevant filesystems misset to be read-only? (If your system
> even has an hde drive, it is unusual in some respect.)

 Yes.  I have a Maxtor (Promise) ATA-U100 add on IDE card.
It controls /dev/hde,f,g,h.

/dev/hda1 is mounted as '/'
/dev/hda3 is mounted as '/usr'

 These are the only 'system' mounts, so /home/gelmce is on /dev/hda1.

>     (e.g., is
> either relevant home directory an nfs share)?

 No. All (both) shares are separate file systems and are
mounted from rc.local.

 This is all I can answer so far.  I'll try your suggestions
and return.

Many thanks, Chuck

> 
Ray Olszewski wrote:
> 
> At 07:51 AM 12/29/2003 -0500, chuck gelm net wrote:
> >Howdy:
> >
> >  I broke something on my file server and now I can no longer
> >'su' (root) remotely.  When I try I get this error:
> >
> >setgid: Operation not permitted
> >
> >  Often I logged on remotely and issued
> >
> >su
> >cd /hde3
> >chmod -R 775 *
> >chgrp -R users
> >
> >So that I could 'rw' the files in that directory
> >from any of my Windows workstations.
> >OBTW, ("/hde3" is /dev/hde3).
> >
> >  What might I have done and how do I fix it?
> >
> >  The system is an old amd-k6-266 running
> >Slackware-8.0 kernel 2.4.19 configured as a file server
> >using nfs and samba.
> 
> "What might I have done" is always a tough question to answer. I'm assuming
> a couple of details that you left out, namely that (a) the message you
> quote occurs right after you enter the root password, with nothing in
> between, and (b) the su then fails, leaving you at whatever userid you were
> at before entering the "su" command. Also that the exact command you enter
> is "su" (not, for example, "su -") and that it is entered at a
> normal-looking command prompt.
> 
> I'd check these things:
> 
> 1. In /etc/passwd, is root still group 0?
> 2. In /etc/group, is group 0 present and named "root"?
> 3. Are any relevant filesystems misset to be read-only? (If your system
> even has an hde drive, it is unusual in some respect.)
> 4. Did anything odd get changed in /etc/login.defs?
> 5. Did anything odd get added to root's profile (/root/.profile, I think)?
> 6. Did you do any update to the system recently that might have introduced
> a library mismatch with su? (I'm not sure which library has the setgid()
> call, but glibc is likely.)
> 
> Finally, have you tried a console login and su? If not, you should, to
> detemine if the problem is connected with the remote aspect of the process.
> If it is, you need to provide more detail about it ... telnet, ssh, rsh, or
> what, for example? Might there be restrictions on what the system will
> permit that login method to do? You mention that the system runs nfs and
> samba ... do they play any obvious role in what you are doing (e.g., is
> either relevant home directory an nfs share)?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
