From: askb <askb23@gmail.com>
Subject: Re: 32 bit processors / 64 bit processors
Date: Wed, 21 Oct 2009 13:13:03 +0530
Message-ID: <1256110983.408.19.camel@linux-k65f.site>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
	 <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=oFfaEX2X9iR16vIwYAa74r5FAoMWLFQV2GS2S2jVXsU=;
        b=glS1i40Mr7orh0hvxFq0sBS7YN1X4CJtBmzKq+s0fqlGnrbNVvm9zCZHP/QfQ9frdS
         sYW4joF/h1ABEPDG9lsBRkyTCRGPvo8wdOGxx8IRghnsddQktQzsEVXupa4exKVX4Kh9
         LkjlwjDZwB4B597GiCiaMkc9bd5NKJH3EsLLc=
In-Reply-To: <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Siddu <siddu.sjce@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Wed, 2009-10-21 at 11:09 +0530, Siddu wrote:
> 
> 
> On Wed, Oct 21, 2009 at 8:32 AM, Rick Brown <rick.brown.3@gmail.com>
> wrote:
>         Hi,
>         
>         Firstly, I'm trying to understand what exactly characterizes a
>         procesor or an operating system as 32bit / 64 bit. I've read
>         that it
>         means the "native word size" of a machine. But what exactly is
>         that?
>         Register size? Address bus size? Anything else?
>         
> 
> When they say its 32/64 bit machine its the capability of the system
> or processor to process so many bits at once !

Additionally, the virtual memory address is 64 bit. Also the main
difference is with sizeof(long int) and sizeof(void *) on both archs. 

> 
>  
> 
>         Secondly, I'm trying to understand what exactly does a
>         sizeof(int)
>         depend on when we say it is "platform specific". Is it
>         dependent of
>         compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit?
>         Or the
>         processor being 32 / 64 bit?
>         
> its dependent on processor being 32/64 bit
> 
> 
>         Lastly, How are "sizes" of compiler / OS / processor inter
>         related?
>         Here is my understanding. A 32 bit processor can only be
>         running a 32
>         bit OS.
> 
> No ... 32 bit OS can run anything <= 32 bit
>  
>         A 64 bit processor may run a 32 or a 64 bit OS.
> 
> yes thats right !
>  
> 
>         A 32 bit
>         compiler genrates code only to be run on a 32 bit OS; ditto
>         for 64
>         bit. 
> 
> Not sure about this let others have their say ! 
> 
>         Is this right?

It is possible to use the -m32 and -m64 flags with gcc for generating
32/64 bit compatible code.



--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
