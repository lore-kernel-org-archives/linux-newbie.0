From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: keyword for rivafb in XF86Confige file
Date: Wed, 29 Sep 2004 15:50:24 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4EE0CBA31942E547B99B3D4BFAB348111081B2@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, mike@kevino.org

Hello mike,



> >>What video card do you have?
> >
> > NVidia Riva TNT2 Modewl64 is my card.
> > Sorry for the delay. I was off station
> >
> >
> >>Mike
> >>
> >>
> >>Mukund JB. wrote:
> >>
> >>>Hello All,
> >>>
> >>>I am not able to make my X server work on rivafb (framebuffer
> >
> > module)
> >
> >>which is loaded as a module on system.
> >>
> >>>I edited "XF86Config-4" file
> >>>Driver "nvidia" .
> >>>Is it the right keyword to invoke the rivafb driver. I got this on
> >
> > same
> >
> >>maillists. Where in the system can I find the database for these
> >
> > keyword
> >
> >>stuff.
> >>
> >>>Later, when I say
> >>># startx , it fails.
> >>>It says:-
> >>>(EE) Failed to load module "nvidia" (module does not exist, 0)
> >>>(EE) No devices detected.
> >>>
> >>>What is going wrong here? Is there any other way through which I
can
> >>
> >>tell the X server to use Framebuffer.
> >>
> >>>Please help.
> >>>
> >>>My system configuration
> >>>Os                linux 7.3(kernel - 2.4.18)
> >>>Boot loader       lilo
> >>>Default runlevel  3
> >>>Framebuffer       rivafb
> >>>X server version  4.2.0
> >>>
> >>>Regards,
> >>>Mukund jampala
> >>>
> 
> Well no expert here, but I had an nvidia card once under linux.
> If you edited your "XF86Config-4" file to
> Driver="nvidia" which I believe is the name of nvidia's driver from
> there site which you would download from them and install as per
> there readme instructions which I have done and works fine and has
> 3d accelleration.


It is working fine now. 
I have edited the Driver field in the device section as follows:-
Driver "fbdev" 

After then the X server is using rivafb as I could see the debug
messages.
But it is not invoked when I switch between app ( ATL+TAB) or I open new
app.
I don't know, why?
Is the software take care of it, rather than the fb driver?
Suggest, if u have any idea.

> 
> XFree86 has their open source driver which handles framebuffer
> support as well and your "XF86Config-4" file would have been
> Driver="nv" this driver works fine but only 2d accelleration.

Our aim is to configure the X so that it uses the fraembuffer driver.

> 
> I dont think you need the rivafb driver if you use the xfree86
> driver or nvidia's propietary driver.

If it is so, then why is linux providing the rivafb driver?
I think that rivafb driver has more functionality implemented in it than
a generic fb driver.

Regards,
Mukund jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
