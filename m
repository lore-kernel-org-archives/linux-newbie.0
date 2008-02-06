From: "mahaveer darade" <mah.darade@gmail.com>
Subject: Re: TLB Question
Date: Wed, 6 Feb 2008 20:19:07 +0530
Message-ID: <7d9e0bf80802060649v171ea1b1r699f4e5bf4f7ca98@mail.gmail.com>
References: <7783925d0802042204n20bb1acch4aa1d422dd44d9e8@mail.gmail.com>
	 <d94614c90802042308r6c918cf1id2e815ad2105c807@mail.gmail.com>
	 <f284c33d0802050345n2d9e764cs339da8b1362dbafb@mail.gmail.com>
	 <d94614c90802050429j4e97c833q704a352d8a1ece1f@mail.gmail.com>
	 <7d9e0bf80802050832j643d4934j90df4651a4bdeb90@mail.gmail.com>
	 <804dabb00802060624v7feb36e1xb45e4ba5db5d547d@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_18808_26293286.1202309347478"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        bh=GNDXxhBDak4/ZuMof7/tgVMgVJKR/wmTcLYSS54+gvs=;
        b=I7kJSBZdEcKAzXywQlZ/HQap1BQWqONwBbek3HEW1xhuUSWD5VIuZJtVNSFYDBp61egIUch/D2BL/5o2cttf16WBbIOztxQk1g55vkOPdwxFeu7GbeNqDQ/R38SnGgW9Nz2kQe4X9k3CK10nFPTfWI/896U4eGLYn7WTHMoAarI=
In-Reply-To: <804dabb00802060624v7feb36e1xb45e4ba5db5d547d@mail.gmail.com>
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
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: sahlot arvind <asahlot@gmail.com>, Mulyadi Santosa <mulyadi.santosa@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

------=_Part_18808_26293286.1202309347478
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Feb 6, 2008 7:54 PM, Peter Teoh <htmldeveloper@gmail.com> wrote:

> I found one header file for x86 that implement the TLB flushing -
> include/asm-x86/tlbflush.h (the different implementation are used are
> used because of the diff generation of x86:
>
> static inline void __native_flush_tlb(void)
> {
>        write_cr3(read_cr3());
> }
>
> (my questions:   WHAT IS THE DIFF BETWEEN FLUSH VIA flush_tlb() above
> vs flush_tlb_global() below?)



below function is used to handle tlb entires of global pages as they do not
get flushed from TLB on task switch or writing to cr3


>
> static inline void __native_flush_tlb_global(void)
> {
>        unsigned long cr4 = read_cr4();
>
>        /* clear PGE */
>        write_cr4(cr4 & ~X86_CR4_PGE);
>        /* write old PGE again and flush TLBs */
>        write_cr4(cr4);
> }
>
> (question:   what is this single - does it flush only ONE SINGLE ENTRY
> IN THE TLB that map this particular addr value?)


yes thats right !! its used to invalidate particular PTE entry in TLB.


>
>
> static inline void __native_flush_tlb_single(unsigned long addr)
> {
>        __asm__ __volatile__("invlpg (%0)" ::"r" (addr) : "memory");
> }
>



-- 
---------------------------
Thanks & Regards,
Mahaveer Darade
mah.darade@gmail.com
Mobile - 9970365267


--- Dream it , Code it.

---The "silly question" is the first intimation of some totally new
development

------=_Part_18808_26293286.1202309347478
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><br><div class="gmail_quote">On Feb 6, 2008 7:54 PM, Peter Teoh &lt;<a href="mailto:htmldeveloper@gmail.com">htmldeveloper@gmail.com</a>&gt; wrote:<br><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
I found one header file for x86 that implement the TLB flushing -<br>include/asm-x86/tlbflush.h (the different implementation are used are<br>used because of the diff generation of x86:<br><br>static inline void __native_flush_tlb(void)<br>
{<br> &nbsp; &nbsp; &nbsp; &nbsp;write_cr3(read_cr3());<br>}<br><br>(my questions: &nbsp; WHAT IS THE DIFF BETWEEN FLUSH VIA flush_tlb() above<br>vs flush_tlb_global() below?)</blockquote><div><br><br>below function is used to handle tlb entires of global pages as they do not get flushed from TLB on task switch or writing to cr3<br>
<br></div><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;"><br><br>static inline void __native_flush_tlb_global(void)<br>{<br> &nbsp; &nbsp; &nbsp; &nbsp;unsigned long cr4 = read_cr4();<br>
<br> &nbsp; &nbsp; &nbsp; &nbsp;/* clear PGE */<br> &nbsp; &nbsp; &nbsp; &nbsp;write_cr4(cr4 &amp; ~X86_CR4_PGE);<br> &nbsp; &nbsp; &nbsp; &nbsp;/* write old PGE again and flush TLBs */<br> &nbsp; &nbsp; &nbsp; &nbsp;write_cr4(cr4);<br>}<br><br>(question: &nbsp; what is this single - does it flush only ONE SINGLE ENTRY<br>
IN THE TLB that map this particular addr value?)</blockquote><div><br>yes thats right !! its used to invalidate particular PTE entry in TLB.<br>&nbsp;</div><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">
<br><br>static inline void __native_flush_tlb_single(unsigned long addr)<br>{<br> &nbsp; &nbsp; &nbsp; &nbsp;__asm__ __volatile__(&quot;invlpg (%0)&quot; ::&quot;r&quot; (addr) : &quot;memory&quot;);<br>}<br></blockquote></div><br><br clear="all">
<br>-- <br>---------------------------<br>Thanks &amp; Regards,<br>Mahaveer Darade<br><a href="mailto:mah.darade@gmail.com">mah.darade@gmail.com</a><br>Mobile - 9970365267<br><br><br>--- Dream it , Code it.<br><br>---The &quot;silly question&quot; is the first intimation of some totally new development

------=_Part_18808_26293286.1202309347478--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

