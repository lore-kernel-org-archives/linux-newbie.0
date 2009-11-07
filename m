From: hmthalib <hmthalib@gmail.com>
Subject: Re: 32 bit processors / 64 bit processors
Date: Sat, 07 Nov 2009 15:50:13 +0530
Message-ID: <4AF549DD.9020103@gmail.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
Reply-To: hmthalib@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:reply-to
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=tGvK5lAaDoarbiDNaURQAFzprGh8Ne8aAGAjqc+uEWw=;
        b=WJRMKrMSwzPPn5pchEf/j2U42i9JlKwFriMV2jKAGxPhbgowCXrZhOgl/s56XSxVe9
         5d0dhgtmqWzP/4p3H0fJY4FwnTYcAKpDbZOyh/Xn2KVz5jRvx9Aiy5BDCRQ9HDEnufUJ
         P+7HaZIeUav/0YSFeD0MeD+2bXYkZqK3a4V24=
In-Reply-To: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
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
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Rick Brown wrote:
> Hi,
> 
> Firstly, I'm trying to understand what exactly characterizes a
> procesor or an operating system as 32bit / 64 bit. I've read that it
> means the "native word size" of a machine. But what exactly is that?
> Register size? Address bus size? Anything else?

depends on the data bus with.

> Secondly, I'm trying to understand what exactly does a sizeof(int)
> depend on when we say it is "platform specific". Is it dependent of
> compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or the
> processor being 32 / 64 bit?

the sizeof(int) depends on the limits.h which the complier uses.

> Lastly, How are "sizes" of compiler / OS / processor inter related?
> Here is my understanding. A 32 bit processor can only be running a 32
> bit OS. A 64 bit processor may run a 32 or a 64 bit OS. 

The 64bit processor gives you the option to run in 32 bit mode or 64bit 
mode. there should be register to switch between them. so refer the 
corresponding data sheet for that processor.

A 32 bit
> compiler generates code only to be run on a 32 bit OS; ditto for 64
> bit. Is this right?

yes .

> 
> TIA,
> 
> Rick
> 
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
> 
> 

--
Thalib

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

