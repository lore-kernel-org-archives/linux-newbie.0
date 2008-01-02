From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: Things I can do before MMU is turned on
Date: Wed, 2 Jan 2008 19:23:59 +0700
Message-ID: <f284c33d0801020423t20c268e3i6d9b8fcff2a46092@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B075CC22B@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=qhFyqEfMv/E6Y2iNE7ePflRahvuP0T+HzQuenyvmetg=;
        b=GP0SmRJ0LBnq9uTnentwvYJAIFV/XIuxJCrw7s7B2xNHMA8olp2FCf8uK4Vpw1o41bf2cGTKvqveAv93K4CICx+UWkQHcYRP66css8rW8S8ApnzwP76CrXKpv48fPfiqCHIoVgdTdMje50hJQkgRHijkcQCB2b1Ee5ty2SyuIKE=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B075CC22B@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

Hi...

> This is a little offtopic but ...

Not sure if I can handle these things :)

> Allowed
> =======
> 1) Local variables
yes, they are referenced by offset of ebp/esp IIRC

> 2) Function calls using function name (right?)

hm, relocation usually replace function calls with absolute function
call, at least on x86.

> 3) if-then-else
that will be translated to jmp <label> IIRC..and that means relative
jump. But not sure after relocation.
> 4) for / while / do-while
same as (3) IMHO

> Not Allowed
> ===========
> 1) Accessing global variables
IIRC yes. .bss and .data is usually referenced with absolute address

> 2) Function call using function pointers (why?)
well, maybe because it can refer anywhere in valid address space, thus
it uses absolute address.

> 3) Switch-case (why?)

usually it become jump table, but not sure about the addresses.

> Any thing else that can be added to the "Not allowed" list?

anything that could possibly jump beyond the defined "address space"?
If I understand correctly, without MMU... there is per task unique
address space, thus it's up to you to define the boundary, correct?

regards,

Mulyadi.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
