From: Rhys Hardwick <rhys@rhyshardwick.co.uk>
Subject: Re: Linux Display silly Question
Date: Wed, 23 Mar 2005 12:56:42 +0000
Message-ID: <4241678A.9080105@rhyshardwick.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Mukund JB. wrote:

 > Hi all,
 > Hi all,
 >
 > I am very new to the GUI thing. I don't know how it works. I just 
have base Linux kernel running on an EBD9312 ARM Embedded Board
 > with Linux Prompt working & no display.
 >
 > Now, I want to provide GUI support to the existing Linux. Now I just
 > want to know are there any kernel modules that the kernel should have to
 > support the GUI?
 > The framebuffer driver is already active. I have NO X server on the
 > machine because of memory constraints.
 >
 > I have gone through a lot of Maillists which say I need to some GUI
 > Library or tools like
 >
 >     GtkFB - does NOT use X11
 >     Qt/Embedded - Direct Framebuffer access and so on.
 >
 > I have a very basic doubt here. I mean how I can launch the GUI
 > Application when there is no UI (NO X server).
 > I think there will be an intermediate desktop like thing which I am
 > missing from where I can launch my application. Is there any thing like
 > that for an ARM embedded system.

The intermediate application is usually the X server, such as xfree86 or 
xorg.  I suppose it will depend on the program you are running.  If it 
required gtk to run, then you will need gtk.  If it requires Qt you will 
need it.  These are designed be called from a x11 server though, so I am 
not sure you can get round this problem.

 > Please help to understand this?
 >
 > Regards,
 > Mukund jampala


-- 
  Rhys Hardwick

  -----------------------------------------------------
| rhys@rhyshardwick.co.uk  |  www.rhyshardwick.co.uk  |
| PGP-id - 0x0EACC0E8      |                          |
|=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=|
|       Windows: Just another pain in the glass.      |
  *****************************************************


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
