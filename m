From: cr <cr@orcon.net.nz>
Subject: Re: LILO configuration
Date: Fri, 5 Mar 2004 21:37:47 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403050932.i259VEVw014309@dbmail-mx2.orcon.co.nz>
References: <3.0.16.20040304224818.480f894c@mail1.abac.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3.0.16.20040304224818.480f894c@mail1.abac.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Tiefenbrunn <davidtief@abac.com>, linux-newbie@vger.kernel.org

It's usually possible to split it, after first compacting the data on the 
drive.  However this would leave Linux as the first partition, Win98 would 
have to be installed in the second partition.    And in my recent experience 
Win98 tends to get paranoid or even psychotic if it isn't in the very first 
partition.   

An alternative (if the PC has physical room) is to pick up a second-hand 1GB 
(or whatever) hard drive dirt cheap and format and install that as your 
Windows drive.    It would also have the advantage that Win98 is less likely 
to go berserk and write all over the Linux.    

Dual or multi booting with GRUB is a breeze, once you get the hang of it.   
(Probably LILO is too, but I'm used to GRUB).
My PC has a 3GB  Win98+DOS+DOS drive in /hda (and boy was that a hassle to 
set up), /hdb is the CD writer, /hdc is a 20GB with several different 
flavours of Linux, and /hdd is a 3GB with mostly data on it.   

cr



On Fri, 05 Mar 2004 16:05, David Tiefenbrunn wrote:
> Hi, all.
>
> I bought a (used) computer that came with SuSe linux installed.  I would
> like to set it up so I can boot either Linux or WIN98 (I know, yuck, but I
> still have some stuff that I need to use there)
>
> The HD is currently set up as one 20gig partition.  Can I split it or do I
> have to start all over from the beginning?  Of course, I don't have the
> linux install CD.
>
> Thank you,
> Dave
>
> Dave  Tief.  N1WWY,  Addie Tief.  N1XQP
> Tiny, Cecil, Magic, Ruby, Sesame and Cinamon
> Visit our web page at http://users.abac.com/dandatief
> Fight Spam: http://www.hostedscripts.com/scripts/antispam.html
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
