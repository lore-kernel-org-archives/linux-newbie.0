From: Ray Olszewski <ray@comarre.com>
Subject: Re: SOLVED: Some users locked out of ssh and sftp?
Date: Mon, 14 Mar 2005 16:06:17 -0800
Message-ID: <5.1.0.14.1.20050314160314.02007ff0@celine>
References: <00d201c528e0$723cf4f0$4f0aa8c0@lanadmin> <00dd01c528f2$1f597440$4f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <00dd01c528f2$1f597440$4f0aa8c0@lanadmin>
References: <00d201c528e0$723cf4f0$4f0aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:01 PM 3/14/2005 -0500, Eve Atley wrote:

>First, I had 'user account is locked'.
>
>Second, once I logged in via the linux box, using 'ssh -l manik
>192.168.10.57', it created a new .Xauthority file, apparently.
>
>And they're in.

I hope your problem is solved ... but I'd encourage you to keep an eye on 
this, at the least.

.Xauthority should have no connection with ssh logins ... and I just 
verified that the one host where I have an account but no .Xauthority file 
(this file derives from running X sessions, as you might guess from the 
name, so is present on my workstations) connects just fine with Winscp.

I don't know what "user account is locked"  means, possibly hecause I don't 
know the context in which you got that message.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
