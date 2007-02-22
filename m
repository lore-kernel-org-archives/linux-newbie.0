From: "Raseel Bhagat" <raseelbhagat@gmail.com>
Subject: Re: not getting command prompt at the console
Date: Thu, 22 Feb 2007 16:55:57 +0530
Message-ID: <f68850780702220325g5c4967a8nee36625d8d83bc04@mail.gmail.com>
References: <b115cb5f0702220149wfbfc051qc8d0106b9e4ed98d@mail.gmail.com>
	 <20070222102540.GB31252@gateway.home>
	 <f68850780702220250x57f4f678re104caecfeec6ef2@mail.gmail.com>
	 <20070222111115.GC31252@gateway.home>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=WDw09ozSkhX2iVKdcAWaBRh9+QqCxDxduTtXkfUd4VQEC3iYgvcg/5RdPTkvpLMlhzc7SAE9u4cTfzk6/L+5wnLRNk+vIZK/qxa7pTlToIg8gZlGzZcfX1PSD2qcPYbVVH3Wo4cUXaRFmQS0AOlbaoN/fdG+c2ND8q2sxZWQkt8=
In-Reply-To: <20070222111115.GC31252@gateway.home>
Content-Disposition: inline
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
To: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>, linux-mips@linux-mips.org

Hi,

On 2/22/07, Erik Mouw <mouw@nl.linux.org> wrote:

> > Also , assuming you are using a serial console , check your entries in
> > the inittab file .
> > It should look  something like :
> > ttyS0::respawn:/sbin/getty ttyS0 115200 linux
>
> If the device is indeed called "ttyS0". Remember it's a MIPS board, not
> a peecee. For example, on StrongARM SA11x0 you need to use ttySA0
> instead of ttyS0.
>

Correct.  Thanks for the correction Erik.
My point being, you sould have such an entry in your inittab when
working on a serial console.
I have faced this problem before and spent hours trying to figure out
what was only a silly-mistake.

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

