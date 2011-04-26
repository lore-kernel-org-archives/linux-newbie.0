From: "Bradley D. Thornton" <Bradley@NorthTech.US>
Subject: Re: Viewing dmesg output after crash
Date: Tue, 26 Apr 2011 02:59:43 -0700
Message-ID: <4DB6978F.2050006@NorthTech.US>
References: <4DB694E5.8000500@st.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4DB694E5.8000500@st.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 
Cc: linux-newbie <linux-newbie@vger.kernel.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: RIPEMD160

Hi Amit,

Truly, the easiest thing you can do is connect to the console via serial
connection during boot and dump it that way.

The output you're getting from the boot probably isn't making it to
logfiles yet.

On 04/26/2011 02:48 AM, Amit Virdi wrote:
> Hi
> 
> I'm debugging a system crash. I got OOPS message and found the buggy
> piece of code. I wish I had the output of dmesg just before the crash.
> In other words, I want to view the last messages collected by the ring
> buffer used by dmesg.
> 
> The log messages are certainly being appended to some logfile in the
> RAM. How can I find the address where the logfile is being created or
> how can I extract the logfile?
> 
> Thanks n Regards
> Amit Virdi
> -- 
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

- -- 
Bradley D. Thornton
Manager Network Services
NorthTech Computer
TEL: +1.760.666.2703  (US)
TEL: +44.203.318.2755 (UK)
http://NorthTech.US

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Find this cert at x-hkp://pool.sks-keyservers.net

iQEcBAEBAwAGBQJNtpePAAoJEE1wgkIhr9j323AIAJNey7bRf/fcwW5/sfMqpSJx
kNYxksD03CrwCCwClzOXInxnMqQxgrx9DGEqX2DotOVB8nvfrXK+gmM7aIvdyA3P
MtiYKuDNLHtNKKXcM5/I7SLZh4hbJCs9H5/GXALCeHtfYfpfwZe/+HnpSbbI7Gkc
b3D2hANfvPJTLuv13l7j9kEx8PO4eBw5b17gh8jsG1HQUA7D1/BguIGQSpBiqowm
jdLMATQs6SU9WWDyQu9elGK1tKiWMMIIw/3O3c81VJU3fE0bY2q4EKySDkuDDHlF
pCg46AH6khq8N9qVaWLVikA9ebpTizaZRSRhNDPqewh/++H3buF3vOnmtWaDm1I=
=xEZF
-----END PGP SIGNATURE-----
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
