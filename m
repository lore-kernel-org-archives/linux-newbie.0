From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Diagnostic Traces and Security
Date: Mon, 5 Aug 2002 08:21:54 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208050712110.8397-100000@Consulate.UFP.CX>
References: <5.1.0.14.1.20020804132806.0211e4e0@celine>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020804132806.0211e4e0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Ray.

> I would like to disagree with your recommendation here, particularly
> with the general form in which you present it ("simply replace each
> specific IP address with a specific IP address from one of the
> "reserved ranges"").

Please put this into context: I was offering advice for a specific
situation where it was already clear that the actual IP addresses in use
were not relevant to the diagnosis, but the identification of specific
IP addresses as being different ones could easily be relevant.

> Specifically, I believe that your statement that the approach you
> recommend results in "usually guaranteeing to provide all of the
> information needed to debug the problem" is incorrect, as is your
> conclusion that "the problem is almost always equally diagnosable
> with substituted IP addresses".

I have corrected your first quote to be the one that I believe I
gave (you missed the word "usually" from it), and I stand by the
resulting claims as a result of long experience.

> Knowing the actual IP addresses involved is not likely to be
> relevant in Korosi's *specific* case...

This was obvious from the comments already made, hence my not
qualifying my advice further.

> ...but there are many cases when it is vital to know the actual
> addresses involved (or at least important properties of them).

I do a lot of diagnostics myself, and I regularly get to deal with
security-paranoid companies and individuals. We developed these rules
for getting the business in the first place:

 1. When we are first approached, the company does NOT want us on
    their premises, so we do as much as possible remotely, and we
    only get round to suggesting that we go round if our remote
    diagnosis indicates that such is required.

 2. Unless the companies ask for guidelines for pasting traces, we
    just tell them to paste everything as it comes, as extensive
    experience has shown that companies usually mangle any editing.
    I agree 100% with you on this.

 3. Where the company indicates concern regarding security in any
    form, we follow the following set routine:

     a. We advise that by editing what they send us at all, they
	may easily be masking the problem we are trying to sort
	out for them.

     b. We tell them to edit the output and replace any passwords
	by the text PASSWORD in upper case. By specifying the text
	to be used, we can tell whether the editing was appropriate.

     c. We tell them that if they are already using one of the
	private IP address ranges, there can be no security issues
	caused by revealing the assigned IP addresses in use. Most
	companies are doing precicely this, and stop here.

 4. In the very rare case where non-private IP addresses are in use
    and security issues are also a concern, we first check how many
    network segments are in use.

     a. We emphasise that it is VERY important that any IP
	addresses external to their network are left alone,
	and that external IP addresses can't cause security
	problems simply because they are external.

     b. If there is just a single network segment in use, we
	tell them to replace any IP addresses from that segment
	with 192.168.* addresses where the * is the last two
	numbers in the current address.

     c. If there are multiple network segments in use, we ask
	whether the different network segments all use the same
	first two numbers in the IP address. If so, we tell them
	to just replace those first two numbers with 192.168 in
	the text they send us.

     d. If there are multiple network segments in use and they
	do not use the same first two numbers in the IP address,
	we check whether there is more than 16 different pairs
	of first two numbers in use. If not, we ask them to
	assign each pair to one of the 172.16 through 172.31
	pairs and consistently replace them by that throughout.

 5. Where none of the procedures in stage (4) apply, we are almost
    certainly dealing with a company with its own dedicated IT
    security and admin staff who have already done the basic
    checks and are approaching us because of more subtle problems.
    We have yet to experience this, so I can offer no tried and
    tested procedure for dealing with them.

    This is the case where our current procedures state to replace
    the first number in each address with 10, but in the event that
    we experience such a case and problems are caused by that, we
    will change these rules to suit.

As it was already clear that the actual IP addresses were irrelevant in
this case I just simplified the whole procedure by using case (5) on its
own. You now have the complete set of rules for reference.

> A lot of the troubleshooting I do, here and elsewhere, involves
> connectivity (address acquisition, routing, firewalling), and in
> these cases, you usually want to know
>
> * if the host with the problem is using "real" or private-range
>   IP addresses, especially...
>
>   + if the ISP is using private-range addreses, since a lot of
>     firewalling software blocks them by default)
>   + if the local network (especially the netmask) makes sense; I
>     often see routing problems caused by specifying a netmask that
>     puts the default gateway outside the external network
>   + any number of things about the routing table

We have already dealt with this issue before we get any traces to look
through, simply because the company has already followed the above
procedure and we have noted that down. When we gett traces, there are
the following possibilities:

 A. The company bailed out of the above at either step (2) or (3),
    in which cases we are seeing raw IP traces to analyse.

 B. The company bailed out of the above at step (4), in which case we
    know that real IP addresses are in use, and the 192.168.* addresses
    we see are the result of editing for security reasons.

 C. The company bailed out of the above at step (5), in which case
    we know that real IP addresses are in use. This is definitely
    the problem case, but so far, it has never arisen.

> * Another example: often, MAC-address authentication failures with
>   cable-modem ISPs are indicated by the symptom of the host being
>   assigned a 10.b.c.d address instead of a "real" IP address. Your
>   advice conceals this symptom.

They are normally assigned either 10.0.c.d or 10.254.c.d addresses, and
we very specifically monitor for either of those combinations, and most
especially the first.

Incidentally, a variant on this was generated by the UK ISP who used the
name "IC24 for Free" as on that specific service, they were allocating
local IP addresses of 10.b1.c.d and remote IP addresses of 10.b2.c.d
where c and d were identical in any given allocation, b1 was in the
range 20 to 99 and b2 was always b1+128. This particular service has
been closed down, and their other service uses more usual IP addresses,
but this was worth noting here.

> My core answer to this sort of question always is: As a general
> proposition, beginners do not know enough to decide what to include
> and what to leave out; they need to post the complete output of
> commands, not edited output. Only passwords (and perhaps other
> personal information, though I can't offhand think of a diagnostic
> that provides anything secret except for passwords) are secret
> enough to be an exception to this.

It is for precicely this reason that we prefer to be dealing with step
(2) above, as even step (3) can on occasion hide information.

In our experience, few diagnostics result in passwords being displayed
as most software replaces any passwords with strings of stars in its
output, so there is little in the way of security risks for customers
who bail out at step (2).

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
