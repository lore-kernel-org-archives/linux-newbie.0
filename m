From: Ray Olszewski <ray@comarre.com>
Subject: Re: LP - Cups - Samba - Print Command
Date: Tue, 01 Oct 2002 09:04:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021001085620.02cc9b70@celine>
References: <000101c2695d$57b09320$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000101c2695d$57b09320$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 11:15 AM 10/1/02 -0400, Paul Kraus wrote:
[...]

>*On a side note why can't I open Linux conf files with notepad? There
>are strange characters. I have to open it with WordPad. I can not save
>or edit using either notepad or WordPad because they seem to add strange
>characters also. Just curious.*


The problem you are seeing has to do with difference in the ways different 
operating systems mark the end of line (EOL) in text files. Unix/Linux 
systems use ascii 10 (CTRL-J) to mark end of line, while Windows systems 
use the two-character sequence ascii 13, ascii 10 (CTRL-M,CTRL-J) that was 
established by MS-DOS. (I *think* Macs use yet another EOL label, just 
CTRL-M, but I may be remembering that wrong, or OS-X may have switched it.)

If you open a Linux text file on a Windows system without first concerting 
it to Windows-format text, you run the risk that the program you open it in 
will  not recognize the EOL markers. This is what happens to you with 
Notepad. Wordpad is smarter and recognizes both possible EOL markers ... 
but it you edit and save in Wordpad, it might change the EOL to Windows 
style, which will cause it to look funny in Linux text editors (lotsa ^M 
characters), and not work if it is an executable.

Linux has programs called "todos" and "fromdos" to change the EOL markings. 
This is also the fix that, for example,  http clients do when 
downloading/uploading mime-type text files and ftp clients do when 
transferring in text (A) mode.


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
