From: Scott Lovenberg <scott.lovenberg@gmail.com>
Subject: Re: Location of syscall wrappers
Date: Thu, 07 Feb 2008 10:53:09 -0500
Message-ID: <47AB2965.4080101@gmail.com>
References: <f5524d840802062248v2311b6at1dc22bc30ece3b60@mail.gmail.com>	 <C86899CCB10A6C4E93D5978DCB232D4B07A66B7D@GDCMX01.igglobal.com> <f284c33d0802070740i29ff633bn95963585b69648f9@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------000500010500040007000305"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type;
        bh=exFbfLCyQCpAYfRu+NJ6028FgqLjPz9ElaiyoVoo1AQ=;
        b=flIOH3Wf1tZilHhjkrsNeY2vqLjRaBYZqAFi6Ri9SA0dcK8RhryFYfHOQ11VhBDjd5vFenUy+LtRLDChE8/6SXeUtmzefJFLC1gte7R1F4acv0eTp9aCn1f+CKuomt1zuhVD75zlBI6KC80xB+LHBsjYYsVQSZJFY6h+9hTTfXA=
In-Reply-To: <f284c33d0802070740i29ff633bn95963585b69648f9@mail.gmail.com>
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
To: Mulyadi Santosa <mulyadi.santosa@gmail.com>
Cc: Rajat Jain <Rajat.Jain@infogain.com>, Sachin Gaikwad <sachin.kernel@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.
--------------000500010500040007000305
Content-Type: multipart/alternative;
 boundary="------------040105040809000607080608"


--------------040105040809000607080608
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Mulyadi Santosa wrote:
> Hi...
>
> On Feb 7, 2008 3:42 PM, Rajat Jain <Rajat.Jain@infogain.com> wrote:
>   
>> Who is supposed to provide syscall()?? C library? Where do I find its definition (not declaration)?
>>     
>
> I think it could be the C kernel headers. I mean something like
> /usr/include/asm...
>
>   
>> What is an application supposed to do if it does not want to use the library?
>>     
>
> by calling sysenter or int 0x80 and put related parameters in certain registers?
>
> regards,
>
> Mulyadi.
>   
for 64 bit:
/usr/include/asm-x86_64/ioctls.h
/usr/include/bits/ioctls.h

so, for all machines:
/usr/include/asm-%arch%/ioctls.h

--------------040105040809000607080608
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta content="text/html;charset=ISO-8859-1" http-equiv="Content-Type">
</head>
<body bgcolor="#ffffff" text="#000000">
Mulyadi Santosa wrote:
<blockquote
 cite="mid:f284c33d0802070740i29ff633bn95963585b69648f9@mail.gmail.com"
 type="cite">
  <pre wrap="">Hi...

On Feb 7, 2008 3:42 PM, Rajat Jain <a class="moz-txt-link-rfc2396E" href="mailto:Rajat.Jain@infogain.com">&lt;Rajat.Jain@infogain.com&gt;</a> wrote:
  </pre>
  <blockquote type="cite">
    <pre wrap="">Who is supposed to provide syscall()?? C library? Where do I find its definition (not declaration)?
    </pre>
  </blockquote>
  <pre wrap=""><!---->
I think it could be the C kernel headers. I mean something like
/usr/include/asm...

  </pre>
  <blockquote type="cite">
    <pre wrap="">What is an application supposed to do if it does not want to use the library?
    </pre>
  </blockquote>
  <pre wrap=""><!---->
by calling sysenter or int 0x80 and put related parameters in certain registers?

regards,

Mulyadi.
  </pre>
</blockquote>
for 64 bit:<br>
/usr/include/asm-x86_64/ioctls.h<br>
/usr/include/bits/ioctls.h<br>
<br>
so, for all machines:<br>
/usr/include/asm-%arch%/ioctls.h<br>
</body>
</html>

--------------040105040809000607080608--

--------------000500010500040007000305
Content-Type: text/x-vcard; charset=utf-8;
 name="scott_lovenberg.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="scott_lovenberg.vcf"

begin:vcard
fn:Scott Lovenberg
n:Lovenberg;Scott
email;internet:scott.lovenberg@gmail.com
title:Student
tel;cell:570-856-2999
x-mozilla-html:TRUE
url:http://www.scottlovenberg.com
version:2.1
end:vcard


--------------000500010500040007000305--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

