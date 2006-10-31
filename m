From: Franklin Chua <fchua@ntsp.nec.co.jp>
Subject: Re: Capitalize a variable in a shell script
Date: Tue, 31 Oct 2006 08:50:12 +0800
Message-ID: <45469DC4.3090502@mnl.ntsp.nec.co.jp>
References: <200610301626.12914.diegolima.br@gmail.com>
Reply-To: fchua@ntsp.nec.co.jp
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------020704090803010000010808"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200610301626.12914.diegolima.br@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Diego Alencar Alves de Lima <diegolima.br@gmail.com>
Cc: linux <linux-newbie@vger.kernel.org>

This is a multi-part message in MIME format.
--------------020704090803010000010808
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Try this...

variable2=`echo $variable1 | tr [a-z] [A-Z]`

Cheers,
Frank

Diego Alencar Alves de Lima wrote:
> How can I capitalize an existing variable in a shell script? Currently 
> $variable is www.domain.com, and I need to create a $variable1 that contains 
> WWW.DOMAIN.COM (I am currently using bash as shell)
>
> Thanks a lot
>   


-- 
Best if consumed promptly upon delivery or take out... :)


--------------020704090803010000010808
Content-Type: text/x-vcard; charset=utf-8;
 name="fchua.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="fchua.vcf"

begin:vcard
fn:Franklin Chua
n:Chua;Franklin
org:NEC Telecom Software Philippines, Inc.
adr:;;2nd Flr. Bonifacio Technology Center;Taguig, Metro Manila;;;Philippines
email;internet:fchua@ntsp.nec.co.jp
title:Software Design Engineer II
tel;work:+632 818-0913
tel;fax:+632 818-0927
note;quoted-printable:NECNET: 800 63 (91) 5411=0D=0A=
	NECFAX: 800 63 (91) 5209
x-mozilla-html:TRUE
version:2.1
end:vcard


--------------020704090803010000010808--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
