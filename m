From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: keyword for rivafb in XF86Confige file
Date: Wed, 29 Sep 2004 15:42:42 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4EE0CBA31942E547B99B3D4BFAB348111081AE@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Owen Ford <oford@arghblech.com>, linux-newbie@vger.kernel.org

Hello ford,

> > I dont think you need the rivafb driver if you use the xfree86
> > driver or nvidia's propietary driver.
> 
> IIRC rivafb actually screws up the nvidia driver.  I've never gotten
it
> working with *any* nvidia card ever :)

It is working for me. 
I have edited the Driver field in the device section as follows:-
Driver "fbdev" 

After then the X server is using rivafb as I could see the debug
messages.
But it is not invoked when I switch between app ( ATL+TAB) or I open new
app.
I don't know, why?
Is the software take care of it, rather than the fb driver?
Suggest, if u have any idea.

Regards,
Mukund jampala

> 
> --
> Owen Ford <oford@arghblech.com>
> 
> ()  ascii ribbon campaign - against html e-mail
> /\                        - against proprietary attachments
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
