From: Ray Olszewski <ray@comarre.com>
Subject: Re: unable to ping cable provider
Date: Sat, 23 Nov 2002 11:50:07 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021123114235.020b8210@celine>
References: <5.1.0.14.1.20021123085232.02126060@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0211231926380.15555-100000@ppg_penguin.linux
 .bogus>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Ken -- There is one part of your latest reply that I do not understand.

At 07:37 PM 11/23/02 +0000, Ken Moffat wrote:
[...]
> > 3. The approach you seem to have arrived at ... put the NIC in a Windows
> > box; register the NIC; move the NIC to your Linux router ... is the good,
> > conservative approach to making the connection work (assuming you are in
> > situation 1B, not 1A). You could also try connecting via your ISP's
> > preferred browser (IE, no doubt) running on a NAT'd Windows or Mac host on
> > the LAN. If you do this right, the connection should look to the ISP as
> > though it were coming from the router's IP and MAC address (unless the ISP
> > specifically has anti-NAT stuff in its system, an unlikely possibility ...
> > but one that will cause bigger problems than we've considered so far if
> > they somehow do it).
>
>  Thanks, I think this is what I did from the iBook. Trouble is, it fails
>to negotiate an ip address from the server (either it ignores the
>specification to use my `router', or it's asking the firewall for the
>address.) It then falls back to trying ping (but doesn't specify who or
>where). Hence my original question.

Since I suggest two different approaches, I am not certain which of them 
"this" refers to.

If it is the second ... then I am still unclear on what some of the "it"s 
refer to, as well as whether the "router" and the "firewall" are both the 
same Linux device or if you mean one term or the other to refer to some 
different device.

For the second approach to work, the iBook itself has a LAN address (either 
assigned statically or via a LAN DHCP server). The ISP then needs to be 
assigning the external address by DHCP, using the router's MAC address for 
authentication. To get this last part to work, you may need to reboot the 
router, or at least force it to request a new DHCP lease.

Or it may not work at all. Depends on the details of how the ISP expects 
you to authenticate yourself.




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
