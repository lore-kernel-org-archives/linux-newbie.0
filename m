From: SOTL <sotl155360@earthlink.net>
Subject: Re: SSH and Monitor failure
Date: Mon, 28 Feb 2005 08:46:24 -0500
Message-ID: <200502280846.25098.sotl155360@earthlink.net>
References: <200502241917.45547.sotl155360@earthlink.net> <200502251328.04753.derek@disposable.dnsalias.org> <200502271747.11731.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <200502271747.11731.sotl155360@earthlink.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie Vger <linux-newbie@vger.kernel.org>


Please disregard following.

Issue was resolved by reconnecting bad HD connection.

Frank

On Sunday 27 February 2005 17:47, SOTL wrote:
> Hi All
>
> Help !!!!!!!!!!!!!
>
> Sorry for screaming but I do feel a bit better now.
>
> I have a small network with 3 computers which mostly does not work:
>
> MSI with name of Reality_Check @ 192.168.2.7 with Mandrake 10.1
> HP with name Meatloaf_Night @ 192.168.2.9 with Mandrake 9.2
> IBM with name Big_Nate @ 192.168.2.2 with Mandrake 10.1
>
> I do not have the ability to install 10.1 on the HP with out replacing the
> CD reader with a DVD reader.
>
> From any one box I can ping either [or both at the same time] of the other
> two boxes. For example from the IBM box I can ping MSI by using 192.168.2.7
> and/or HP by using 192.168.2.9.
>
> I can not ping either of the other boxes by using names. For example I can
> not ping MSI or HP by using the names Reality_Check or Meatloaf_Night nor
> can I ping the IBM box from either MSI or HP using Big_Nate.
>
> So, numbers work; names do not work. I believe this issue will be solved
> when I configure /etc/hosts or my firewall router so for this posting that
> issue is not relevant.
>
> I was able to access the MSI box from both the HP box and the IBM box by
> using the following:
> fish://username@ip_address/path/to/directory
> or fish://trunk@192.168.2.7
>
> After performing the above plus actions I departed and returned.
>
> Firing up all 3 computers the 2 which I was not able to access by fish came
> up normal and functioned normal.
>
> The MSi box which I was able to access by fish came up with video up to 3/4
> way through KDE boot at which time it lost video and maybe key and mouse
> too as they did not appear to be functioning either.
>
> I shut the box down by turning power off [bad practice] since I appear to
> have no control of box.
>
> I repeated the above several times with identical results.
>
> I attempted to access box by fish and was able to do so.
>
> I placed Mandrake 10.1 disk in DVD drive and did an upgrade.
>
> Booting box after upgrade I still got blank screen and most possible no
> mouse and no keyboard.
>
> My personal belief at this point is that the box is confused by my not
> logging out of SSH - I saw no way to do such so I just closed Konqueror on
> the box I was SSHing from.
>
> Question:
>
> How does one go about establishing why, how issue develops and how does one
> repair?
>
> Thanks
> Frank
>
> > /etc/hosts is a system file and can only be edited by root user. If you
> > are in KDE hit Alt+F2 and enter 'kdesu konqueror' to get a root copy of
> > konqueror file manager.
> >
> > If your IP address does keep changing, then it may be more convenient to
> > use samba instead of fish.
> > Samba allows you to join a Windows network, and you can pass files
> > between both Windows and Linux computers.
> >
> > > Since I would imagine part of my ping issue is that hostname is not set
> > > and user name may not be [not sure if user name is same as login user
> > > or if this is different user name] lets tackle username and host name
> > > first. How do I set them up?
> >
> > The user name is the login name.
> >
> > > > derek
> > >
> > > Thanks for the help
> > > Frank
> >
> > HTH
> > derek
>
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
