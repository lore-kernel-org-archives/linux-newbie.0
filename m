From: Ray Olszewski <ray@comarre.com>
Subject: Re: Zip problems
Date: Mon, 28 Oct 2002 23:39:42 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021028233032.020f90b0@celine>
References: <1035852013.7925.4.camel@brainpress.verizon.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035852013.7925.4.camel@brainpress.verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 07:40 PM 10/28/02 -0500, Bryan Simmons wrote:
>Can anyone tell me what the problem is if you've just installed Mandrake
>9.0 on an Athlon XP 2100+ system, ATA 100 HD, VIA chipset MB (don't know
>which chipset number), etc...  I thought I installed every library under
>the sun, as well as every non-server application, but when I try to run
>the command 'unzip' I get this error:
>
>Archive:  /usr/bin/unzip
>   End-of-central-directory signature not found.  Either this file is not
>   a zipfile, or it constitutes one disk of a multi-part archive.  In the
>   latter case the central directory and zipfile comment will be found on
>   the last disk(s) of this archive.
>note:  /usr/bin/unzip may be a plain executable, not an archive
>unzip:  cannot find zipfile directory in one of /usr/bin/unzip or
>         /usr/bin/unzip.zip, and cannot find /usr/bin/unzip.ZIP, period.

It is easier to diagnose problems with a command when you include the exact 
command you ran. That said, the first thing to try doing is believing the 
error message you are getting: the target file you ask unzip to unzip is 
not a zip archive.

 From the output of the command, it *appears* you entered something like 
"unzip /usr/bin/unzip", since the "Archive:" part of the message should be 
reporting the name of the file you are trying to unzip. Of course, the 
executable unzip is not iself a zip file, so unzip cannot unzip itself.

As you can see here, I get this same sort of report when I try to unzip an 
ordinary text file (it matches word for word, except for the names of the 
files).

         autovcr@waverly:~$ unzip vcrlogfile.txt
         Archive:  vcrlogfile.txt
         End-of-central-directory signature not found.  Either this file is not
         a zipfile, or it constitutes one disk of a multi-part archive.  In the
         latter case the central directory and zipfile comment will be found on
         the last disk(s) of this archive.
         unzip:  cannot find zipfile directory in one of vcrlogfile.txt or
                         vcrlogfile.txt.zip, and cannot find 
vcrlogfile.txt.ZIP, period.

If I have guessed incorrectly here about what command you entered, please 
report the actual command you did enter to get this output.

I don't use the other commands you asked about, so I can't make any 
suggestions there.

>Also, when I open a zip file in Ark, it says that there is nothing in
>the archive eventhought the file is listed as 900k or so...
>And when I try to open any zip in gnozip, the program aborts swiftly,
>with only these errors (from bash command line):
[details deleted]


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
