From: Ray Olszewski <ray@comarre.com>
Subject: Re: How can I expand the window size of a telnet session?
Date: Thu, 19 Dec 2002 11:27:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021219112230.020fed00@celine>
References: <atsoff$m76$1@main.gmane.org>
 <5.1.0.14.1.20021219083029.020b4840@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <att5ra$if3$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:15 PM 12/19/02 -0500, Jamie Risk wrote:
>[...]
> > "X client"? X is a server; client applications use it. And I'm assuming
> > below that "windows" refers to some version of Microsoft Windows.
>
>ummm, I've been fiddling with XWin32, which I thought was X windows
>manager that operated as a "client" logging into my Linux X-Windows
>"server".

I'm unfamiliar with that product, but a quick search found its home Web 
site at http://www.xwin32.dk/, and the docs there refer to it as a "PC X 
server". So I assume it is a fairly conventional implementation of X for 
Windows (there have been many over the years). With no details provided, it 
is not apparent why it is not working for you ... but to the extent that 
the problems are on the Windows end, this list is not likely to be a good 
place to work those out.

Another option you might want to consider is VNC. To use it, you run a 
server on the remote machine (in this case, the Linux host) and a client on 
the local workstation (in this case, the WinXX host). Your Linux distro 
probably have both vncserver and vncclient packages, and the usual sorts of 
searches will lead you to the Windows app.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
