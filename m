From: Frank Robers _ SOTL <sotl155360@earthlink.net>
Subject: Re: Minicom and Modem
Date: Sun, 2 Feb 2003 07:45:13 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200302020745.13455.sotl155360@earthlink.net>
References: <200302011710.46462.sotl155360@earthlink.net> <03020209383900.19519@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <03020209383900.19519@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl, Linux Newbie <linux-newbie@vger.kernel.org>

Hi

Thanks for the help. I greatly appreciate your taking the effort to respond.

Unfortunately I do not understand exactly you are saying in relation to this 
issue most like because I did not phrase the question correctly. Also I had 
forgotten that this is a dual boot box ( I try to forget the other half.) so 
all I had to do to check if it is /dev/ttyS0 or /Dev/ttyS1 was check 
Hyperlink. I definitely have com1 which is of course /dev/ttyS0 so I reset 
that in minicom accordingly.

Which I believes brings me up to the issue of minicom not seeing the modem 
which I believe you addressed as:

> Either you don't have a link to the correct comport in /dev or its set
> pointing to the wrong device.
>
> If its com1 then do as root;
> cd /dev
> rm modem
> ln -s ttyS0 modem

All well and good but here is where fear of trying the above and destroying 
what I have combines with ignorance to produce intransigence.

Simply put I do not have a modem connected to the serial port.
My modem is an internal modem which works very well on Kppp.
What I have connected to the serial port is a null modem cable so that I can 
transfer files from one computer to a special process computer with the only 
access being a serial port.

Now for the principal issue.

If I issue the above commands will that screw up Kppp from seeing the builtin 
modem and stop normal Internet connections.

Thanks

Frank
 

On Sunday 02 February 2003 04:38, pa3gcu wrote:
> On Saturday 01 February 2003 22:10, Frank Robers _ SOTL wrote:
> > Hi All
> >
> > Sorry for the posting. I have tried for two weeks to find my previous set
> > of Minicom notes but.
> >
> > Anyway hopefully some nice person will help.
> >
> > I have this computer connected to another computer by null modem cable.
> > This is not the first time for this so I know that the other computer is
> > working correctly but on this box I reinstalled the system after a major
> > screw up. Apparently that was when I lost my minicom notes.
> >
> > Anyways I have two serial port possibilities /dev/ttyS0 and /dev/ttyS1.
> > If memory serves me correctly I used ttyS0 previously but either way I
> > have tried both.
>
> IIRC, most distro's link /dev/modem to /dev/ttyS1 as default, or dont set
> it at all.
>
> > The problem is that minicom does not see the serial port and I never
> > establish a connection.
>
> Either you dont have a link to the correct comport in /dev or its set
> pointing to the wrong device.
>
> If its com1 then do as root;
> cd /dev
> rm modem
> ln -s ttyS0 modem
>
> > Again if I recall correctly I had to issue a command from the terminal to
> > initiate so that minicom would see the serial port but I can not recall
> > the command.
>
> minicom -s ?
>
> Set minicom up properly and make sure its now using /dev/modem, ?
>
> > Damn I wish I had my notes back.
> >
> > Anyway hopefully some one will know what I am talking about and can help.
> >
> > Thanks
> >
> > Frank

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
