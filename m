From: Chris Rose <offline@shaw.ca>
Subject: RE: Samba as DC
Date: Mon, 28 Apr 2003 11:18:31 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000a01c30daa$34249540$4b01a8c0@deadbox>
References: <5.1.0.14.1.20030428075323.01fa99b8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20030428075323.01fa99b8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>
Cc: "Linux-Newbie (Linux Newbie)" <linux-newbie@vger.kernel.org>

 
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Sorry about that - i keep forgetting that for this one list i have to reply to all instead of the usual way.

Anyway, i am currently trying your suggestion, and it seems to be working.  Not perfectly, but well enough to suit me.  The one single problem with it that i can see is that since the router is no longer handling any of the clients, none of them seem to be able to connect to it in order to administer it - I'm not sure why this would be, but there it is.  Hopefully this won't be critical, but i've run into problems with this router already, where i'll lose the wireless network every couple of days and have to manually change the channel that it uses.  If that happens, there's gonna be problems, but other than that we should be alright.

Thanks, Ray.  This is one of the better kludges i've ever seen :)

Chris R.
=======
http://offline.pointclark.net/

- -----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com] 
Sent: April 28, 2003 9:03 AM
To: Chris Rose
Subject: RE: Samba as DC


At 01:38 AM 4/28/2003 -0600, Chris Rose wrote:
>
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>Well, you've already taught me more in that message than i expected to 
>find out :)
>
>Yes, the router is performing NAT on the laptop.  Damn, i kind of forgot 
>that'd be a problem.
>
>Pinging does fail, as expected, and i guess that leaves me kind of at a 
>dead end here.  I have a few ideas, but certainly nothing solid.
>
>The WiFi router is a d-link DI-614+.  I don't see anything in the config 
>screens about a 'bridging' mode, possibly because they're kind of dumbed 
>down, and i'm not a networking guru to start with (I guess that means 
>they're geared at folks like me, then, doesn't it?)  I may have to resign 
>myself to grabbing files by scp over the internal network as needed, 
>then.  So be it.  Alternately, the router has a 4-port switch in it, which 
>i guess i could use...  Assuming i'm not too lazy to re-org all the port 
>forwards etc... :)
>
>Thanks, boss, i appreciate the answer.

OK. I have a 713P, which also has both a WiFi WAP and a 4-port switch (or 
maybe hub, I didn't check and don't recall). What you can TRY is this:

1. In the router, WiFi WAP/router, turn DHCP off. (You should be able to do 
this from the Web config interface.)
2. Use one of the 4 switch ports (not the external interface) to connect 
the device to the wireline LAN.
3. Use the WiFI WAP to connect your laptop.
4. Expect your laptop to get its IP Address the same way your wireline 
machines do. For example, if you use DHCP on the wireline LAN,  expect this 
setup to cause your laptop to get a lease from the regular DHCP server, on 
the 192.168.1.0/24 network. If you assign addresses statically, do so for 
the laptop as well.
5. Now see if the laptop can access LAN shares.

If this works, then the WiFi WAP is acting as an ordinary WAP on the LAN, 
rather than a NAT'd one. This is not bridging (bridging would involve 
changes in the settings of the external interface), but it functions in an 
analogous way. It is an undocumented feature of at least some WiFi 
WAP/routers ... whether it works for the one you have, that I don't know. 
(It worked with mine, but unreliably ... but I was having WiFi problems on 
the Linux end at the time, and I haven't retested since I corrected them).

Oh ... I just noticed that this was a private message to me. If you try 
this and it works, I'd appreciate your posting a message to the list 
telling people so, as surely you are not the only person who has, or will 
have, this requirement.




-----BEGIN PGP SIGNATURE-----
Version: PGP 8.0

iQA/AwUBPq1iZ8FBXq9qNmWaEQJ4RgCg5R7F1WFuPffutWUB6R+iJWEyC/wAoN9e
EtQM5X+6GWW1gaB+9LExFGgJ
=mChC
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
