From: Ray Olszewski <ray@comarre.com>
Subject: Re: lpr problems with HP Deskjet 712C
Date: Mon, 20 Jan 2003 12:34:19 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030120121028.02117b20@celine>
References: <000701c2c0b7$df4cdda0$6400a8c0@ngaruahoe>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000701c2c0b7$df4cdda0$6400a8c0@ngaruahoe>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:12 PM 1/20/03 -0500, Jonathan Kallay wrote:
>Hi all,
>   I'm trying to configure my box as a printserver over Samba, to connect it
>to our HP Deskjet 712C (formerly attached to a laptop, which I want to make
>more portable).  With a little bit of work I've got PDQ printing fine.
>However, if I try printing directly to the parallel port ("cat filename >>
>\dev\lp0") I get the message "lp0: compatibility mode" but  nothing actually
>prints out.  I get the same message when using PDQ but something will
>actually print.  Since this HP printer uses a proprietary file format, I
>figured perhaps a plaintext file wouldn't have the instructions to actually
>print embedded in it.  So I've tried sending files from the Windows laptop
>(which has the printer's drivers installed) to the printer over Samba- with
>the same results.

Can for post a followup with a more exact description of what you are doing?

First, in what you posted, the use of backslashes (\) where you should be 
using forward slashes (/) is an obvious error, and it might help to know if 
it is just in your message to us or in what you are actually doing. (That 
is, the command should read "cat filename >>/dev/lp0", not "cat filename >> 
\dev\lp0" -- your version is equivalent to "cat filename >> devlp0", which 
would create the file devlp0 and copy the other file's contents to it.) In 
any case, if the printer needs a special driver to work (as this one does; 
see final item), cat'ing to lp0 is unlikely to work.

Second, what does the [printers] block in /etc/samba/smb.conf look like? 
Assuming it refrences a spool directory, what does the /etc/printcap entry 
corresponding to that spooler look like?

Third, when you say ...

>So I've tried sending files from the Windows laptop
>(which has the printer's drivers installed) to the printer over Samba- with
>the same results.

... what are you actually doing? Are you printing to a network printer from 
some application, for example? And do you really mean you get the message 
"p0: compatibility mode" as part of the failure? If not, please be precise 
about what you mean by "same" results.

Fourth, when you say " I've got PDQ printing fine" ... how? PDQ appears to 
be (from the apt-cache package description; I don't use it myself)  just a 
frontend for workstation use; behind the curtain, lpr or LPRng still needs 
to be working to support Samba (but not necessarily PDQ) printing.

Finally, have you consulted the Linux Printing Database for HP printers? 
It's at URL

         http://www.linuxprinting.org/printer_list.cgi?make=HP

The Deskjet 712C is listed in the works "Perfectly" column, and the link 
specifies use of the  pnm2ppa driver, and makes some comments about use 
with PDQ as well.


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
