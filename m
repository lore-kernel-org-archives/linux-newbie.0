From: "Gaurav Dhiman" <gaurav.dhiman@nechclst.in>
Subject: RE: "struct file" - per process per file?
Date: Fri, 30 Mar 2007 07:21:52 +0530
Message-ID: <0A8CFEC45B7F4C419F7543867C47442371B37E@mailserver.nechclst.in>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7726D.FD1747A5"
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-class: urn:content-classes:message
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
To: Rajat Jain <rajat.noida.india@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

This is a multi-part message in MIME format.

------_=_NextPart_001_01C7726D.FD1747A5
Content-Type: text/plain;
	charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit

Hi Rajat,
 
Find my inline response, marked wih "GD>".
As my mail client does not support text response, so sorry for such a  marking tag.
 
 
From: kernelnewbies-bounce@nl.linux.org 代理 Rajat Jain
Sent: 3/29/2007 (木) 10:11 午後
To: kernelnewbies; newbie
Subject: "struct file" - per process per file?



Hi,

This has reference to LDD3 chap3 - Char drivers (Pg 60).

The following is my understanding which seems to be incorrect. Can
somebody please point out what am I missing?

LDD3 states that the fops->open() and fops->release() methods are
called only when "struct file" is created / destroyed. It further says
that "struct file" is created ONLY when a process calls open() system
all on a file. To give an example, it also says that if process 1
opens file A and then forks another process B, then A and B will share
the same struct file??


GD> This is correct. whenever a process opens the file, corresponding "struct file" structure is created in kernel. As you might be knowing that this is just a virtual file in kernel which keeps track of attributes of actual file, like where to read/write, pointer to file operation structures etc. Theseattributes makes sense when a file is opened, till the file is not closed, at which time fops->release() function is called.


This seems quite strange to me as I had an understanding that two
processes working on the same file will always have different file
structure. Also, this would mean that a read by one of the processes
on the file would affect the file position pointer in the other
process?


GD> Wherever a process forks another process all the "struct file" strucutres are shared between both processes unless and untill any one of those processes does not write to it at which time a seperate copy is created, this is also know as COW (Copy On Write). When a process is forked, no other "struct file" structure is created, rather the refference count for the "struct file" structures are incremented  and there pointers are also saved in new process's file table (struct file_struct).

 
I am sure I am missing something here. What is it?

Thanks,

Rajat

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ




------_=_NextPart_001_01C7726D.FD1747A5
Content-Type: text/html;
	charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit

<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-2022-jp">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>

<META NAME="Generator" CONTENT="MS Exchange Server version 6.5.7226.0">
<TITLE>&quot;struct file&quot; - per process per file?</TITLE>
</HEAD>
<BODY>
<DIV id=idOWAReplyText62164 dir=ltr>
<DIV dir=ltr><FONT face="ＭＳ Ｐゴシック" color=#000000 size=2>Hi Rajat,</FONT></DIV>
<DIV dir=ltr><FONT face="ＭＳ Ｐゴシック" size=2></FONT>&nbsp;</DIV>
<DIV dir=ltr><FONT face="ＭＳ Ｐゴシック" size=2>Find my inline response, marked wih 
"GD&gt;".</FONT></DIV>
<DIV dir=ltr><FONT face="ＭＳ Ｐゴシック" size=2>As my mail client does not support 
text response, so sorry for such a&nbsp; marking tag.</FONT></DIV>
<DIV dir=ltr><FONT face="ＭＳ Ｐゴシック" size=2></FONT>&nbsp;</DIV>
<DIV dir=ltr><FONT face="MS UI Gothic" size=2><B></B></FONT>&nbsp;</DIV>
<DIV dir=ltr><FONT face="MS UI Gothic" size=2><B>From:</B> 
kernelnewbies-bounce@nl.linux.org 代理 Rajat Jain<BR><B>Sent:</B> 3/29/2007 (木) 
10:11 午後<BR><B>To:</B> kernelnewbies; newbie<BR><B>Subject:</B> "struct file" - 
per process per file?<BR></FONT><BR></DIV></DIV>
<DIV>
<P><FONT size=2>Hi,<BR><BR>This has reference to LDD3 chap3 - Char drivers (Pg 
60).<BR><BR>The following is my understanding which seems to be incorrect. 
Can<BR>somebody please point out what am I missing?<BR><BR>LDD3 states that the 
fops-&gt;open() and fops-&gt;release() methods are<BR>called only when "struct 
file" is created / destroyed. It further says<BR>that "struct file" is created 
ONLY when a process calls open() system<BR>all on a file. To give an example, it 
also says that if process 1<BR>opens file A and then forks another process B, 
then A and B will share<BR>the same struct file??<BR></FONT></P>
<P><FONT size=2>GD&gt; This is correct. whenever a process opens the file, 
corresponding "struct file" structure is created in kernel. As you might be 
knowing that this is just a virtual file in kernel which keeps track of 
attributes of actual file, like where to read/write, pointer to file operation 
structures etc. Theseattributes makes sense when a file is opened, till the file 
is not closed, at which time fops-&gt;release() function is 
called.</FONT></P><FONT size=2></FONT><FONT size=2>
<P><BR>This seems quite strange to me as I had an understanding that 
two<BR>processes working on the same file will always have different 
file<BR>structure. Also, this would mean that a read by one of the 
processes<BR>on the file would affect the file position pointer in the 
other<BR>process?<BR></P>
<P>GD&gt; Wherever a process forks another process all the "struct file" 
strucutres are shared between both processes unless and untill any one of those 
processes does not write to it at which time a seperate copy is created, this is 
also know as COW (Copy On Write). When a process is forked, no other "struct 
file" structure is created, rather the refference count for the "struct file" 
structures are incremented&nbsp; and there pointers are also saved in new 
process's file table (struct file_struct).</P>
<P>&nbsp;<BR>I am sure I am missing something here. What is 
it?<BR><BR>Thanks,<BR><BR>Rajat<BR><BR>--<BR>To unsubscribe from this list: send 
an email with<BR>"unsubscribe kernelnewbies" to ecartis@nl.linux.org<BR>Please 
read the FAQ at <A 
href="http://kernelnewbies.org/FAQ">http://kernelnewbies.org/FAQ</A><BR><BR></P></FONT></DIV>

</BODY>
</HTML>
------_=_NextPart_001_01C7726D.FD1747A5--


--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

