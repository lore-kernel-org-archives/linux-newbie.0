From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: Padding in gcc
Date: Mon, 9 Jul 2007 20:22:47 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B052E0024@GDCMX01.igglobal.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B0575FCC7@GDCMX01.igglobal.com> <366312910707090738u5b3b00bxe56e609dae905b7a@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C7C239.7EBBDA5D"
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
To: pradeep singh <2500.pradeep@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01C7C239.7EBBDA5D
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
=20
>>
>> Can we always rely on the fact that gcc will pad the following =
structure?
>>
>> typedef struct {
>>     int descrp;      SYSCALL64_STRUCT_ATTR;
>>     (Automatic padding here?)
>>     long long pos;   SYSCALL64_STRUCT_ATTR;
>>     int mode;        SYSCALL64_STRUCT_ATTR;
>> } lseek64_t;
>>
>> What is the correct way to make it portable? Explicitly added padding =
fields?

>may be i am missing something but why is this not portable? And how
>does padding makes this portable?

Hi ... sorry I could not ask very well, what I wanted to. I have a piece =
of code that ASSUMES that the above structure is padded (and I do not =
want to change that code). So how can I make sure that this structure is =
always padded (Is there any other way apart from adding explicit padding =
field?)=20
=20
So like we have a "packed" gcc attribute, do we have a "padded" gcc =
attribute or something like that (that ensures that gcc will always pad =
this structure.).
=20
Thanks,
Rajat
=20
=20

------_=_NextPart_001_01C7C239.7EBBDA5D
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Diso-8859-1">=0A=
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">=0A=
<HTML>=0A=
<HEAD>=0A=
=0A=
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
6.5.7652.24">=0A=
<TITLE>Re: Padding in gcc</TITLE>=0A=
</HEAD>=0A=
<BODY>=0A=
<DIV id=3DidOWAReplyText25958 dir=3Dltr>=0A=
<DIV dir=3Dltr><FONT face=3DArial color=3D#000000 =
size=3D2></FONT>Hi,</DIV>=0A=
<DIV dir=3Dltr>&nbsp;</DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2>&gt;&gt;<BR>&gt;&gt; Can we always rely on =
the fact =0A=
that gcc will pad the following structure?<BR>&gt;&gt;<BR>&gt;&gt; =
typedef =0A=
struct {<BR>&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; int =0A=
descrp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =0A=
SYSCALL64_STRUCT_ATTR;<BR>&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; (Automatic =
padding =0A=
here?)<BR>&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; long long pos;&nbsp;&nbsp; =0A=
SYSCALL64_STRUCT_ATTR;<BR>&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp; int =0A=
mode;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =0A=
SYSCALL64_STRUCT_ATTR;<BR>&gt;&gt; } lseek64_t;<BR>&gt;&gt;<BR>&gt;&gt; =
What is =0A=
the correct way to make it portable? Explicitly added padding =0A=
fields?<BR></FONT></DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2>&gt;may be i am missing something but why =
is this not =0A=
portable? And how<BR>&gt;does padding makes this =
portable?<BR></FONT></DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2>Hi ... sorry I could not ask very well, =
what I wanted =0A=
to. I have a piece of code that ASSUMES that the above structure is =
padded =0A=
(and&nbsp;I do not&nbsp;want to&nbsp;change that code). So how can I =
make sure =0A=
that this structure is always padded (Is there any other way apart from =
adding =0A=
explicit padding field?) </FONT></DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2></FONT>&nbsp;</DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2>So like we have a "packed" gcc attribute, =
do we have a =0A=
"padded" gcc attribute or something like that (that ensures that gcc =
will always =0A=
pad this structure.).</FONT></DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2></FONT>&nbsp;</DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2>Thanks,</FONT></DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2>Rajat</FONT></DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2></FONT>&nbsp;</DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2>&nbsp;</DIV></FONT></DIV>=0A=
=0A=
</BODY>=0A=
</HTML>
------_=_NextPart_001_01C7C239.7EBBDA5D--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

