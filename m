From: Ray Olszewski <ray@comarre.com>
Subject: Re: Multiple CD Changer
Date: Sun, 21 Jul 2002 17:58:26 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020721131448.02196ec0@celine>
References: <3D3AF0FD.55410F4F@gmx.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D3AF0FD.55410F4F@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Oliver Ob <ob_ok@gmx.net>, Lx Newbie List <linux-newbie@vger.kernel.org>

At 07:35 PM 7/21/02 +0200, Oliver Ob wrote:
>Hello,
>
>how can I mount a 6-CD-Changer into my tree?
>
>It is /dev/hdb
>
>But how can I distinguish those 6 slots?
>Mount them each?
>
>Best regards!

Oliver -- Since you've posted this same question three times now, and 
received no responses (at least none copied to the list), it is reasonable 
to assume that no one here can answer your question in the form you pose 
it. Perhaps if you provided a bit more of a description of the hardware 
involved, though, someone might have an idea. The kind of information I 
have in mind is:

1. Make and model of the actual device. Perhaps even a URL for its 
manufacturer.

2. You call it a "changer" and refer to "slots", but that doesn't give me a 
feel for the actual mechanics of the device. Is it actually a device with 
one CD drive in it, and a built-in mechanism for holding 6 different disks 
and loading any of them on demand? (For example, does it physically 
resemble the music CD changers I am, and no doubt most everyone is, 
acquainted with?) If not, what is the actual mechanism?

3. I expect that this device, like most PC hardware, comes with software 
that causes it to work under at least some versions of Windows. If this is 
correct, then how do the disks get changed under Windows?

I did do a quick Google search and found several (fairly old) references 
tro kernel patches that supported *specific* IDE-based CD changers. At 
least one of them referred to a program that would mount each CD as a 
separate mount point. From what I read, I surmise that the solution to your 
problem ... if one exists ... does depends on the particular CD changer you 
have. But doing a Google search on the specific brand name plus "Linux" 
might serve you better than we can.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
