From: Ray Olszewski <ray@comarre.com>
Subject: RE: Samba as DC
Date: Mon, 28 Apr 2003 10:47:55 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030428103620.01f9ff78@celine>
References: <5.1.0.14.1.20030428075323.01fa99b8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000a01c30daa$34249540$4b01a8c0@deadbox>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Chris Rose <offline@shaw.ca>
Cc: "Linux-Newbie (Linux Newbie)" <linux-newbie@vger.kernel.org>

See below.

At 11:18 AM 4/28/2003 -0600, Chris Rose wrote:
>
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>Sorry about that - i keep forgetting that for this one list i have to 
>reply to all instead of the usual way.
>
>Anyway, i am currently trying your suggestion, and it seems to be 
>working.  Not perfectly, but well enough to suit me.  The one single 
>problem with it that i can see is that since the router is no longer 
>handling any of the clients, none of them seem to be able to connect to it 
>in order to administer it - I'm not sure why this would be, but there it 
>is.  Hopefully this won't be critical, but i've run into problems with 
>this router already, where i'll lose the wireless network every couple of 
>days and have to manually change the channel that it uses.  If that 
>happens, there's gonna be problems, but other than that we should be alright.
>
>Thanks, Ray.  This is one of the better kludges i've ever seen :)

Yes, especially because there combo wouter/switch/WAP boxes -- or at least 
some of them -- are going cheap to get them out of the way for new models 
that are not limited to 802.11b. I got my D-Link on closeout locally for $40.

I haven't retried this, as I said, but I *suspect* that the problem 
connecting is that with this setup, your workstations simply have no route 
to the WiFi WAP/router's setup address, and it has no route back to the 
workstations. As an experiment, you might try changing both netmasks to /23 
(that is, 255.255.254.0), which should let the "local" route cover both 
192.168.1.0/24 and 192.168.0.0/24. See if that lets you connect. (Remember, 
you have to do this on the WiFi WAP/router as well as the workstations.)

Alternately, you might see if the WiFi WAP/router's network settings can be 
changed and saved. If they can, set the internal network address to 
192.168.1.0/24, and use some out-of-the-way IP address (something outside 
the DHCP range) for the WiFi WAP/router itself.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
