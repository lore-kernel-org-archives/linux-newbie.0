From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: Re: Linux Display silly question
Date: Wed, 23 Mar 2005 18:54:55 +0000
Message-ID: <4241BB7F.2000001@comcast.net>
References: <4EE0CBA31942E547B99B3D4BFAB348113F4FA1@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB348113F4FA1@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>, linux-newbie@vger.kernel.org

Mukund JB. wrote:

>Hi all,
>Hi all,
>
>I am very new to the GUI thing. I don't know how it works. 
>I just have base Linux kernel running on an EBD9312 ARM Embedded Board
>with Linux Prompt working & no display.
>
>Now, I want to provide GUI support to the existing Linux. Now I just
>want to know are there any kernel modules that the kernel should have to
>support the GUI?
>The framebuffer driver is already active. I have NO X server on the
>machine because of memory constraints.
>
>I have gone through a lot of Maillists which say I need to some GUI
>Library or tools like
>
>	GtkFB - does NOT use X11
>	Qt/Embedded - Direct Framebuffer access and so on.
>
>I have a very basic doubt here. I mean how I can launch the GUI
>Application when there is no UI (NO X server).
>I think there will be an intermediate desktop like thing which I am
>missing from where I can launch my application. Is there any thing like
>that for an ARM embedded system.
>
>Please help to understand this?
>
>Regards,
>Mukund jampala
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>
I dunno if this will help since I am not sure of the memory usage, but 
there is an alternative to X that is in its infant stages.

http://www.y-windows.org/

Jeremy Abbott
jkbullfrog@comcast.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
