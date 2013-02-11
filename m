From: horseriver <horserivers@gmail.com>
Subject: Re: what is the fs type of root filesystem ?
Date: Tue, 12 Feb 2013 05:26:38 +0800
Message-ID: <20130211212638.GA2433@debian.localdomain>
References: <20130211063823.GA5824@debian.localdomain>
 <20130211162903.GW71256@thebe.jupiter.sigsegv.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=1ZnyIX0z8AATNn4rbcgN0nzLnhL8yN/dam//S0+m05Q=;
        b=Q6G5fWc4VsdhGL2Kouv+YrxAtszEllwYazfrIbTfnPwq8mNEvEyMXjIPkrBpR1SVnT
         tZ/LvKHSfEz7khG5V6KQMaq339a3U5FcW0icI7ol48WH/9M13oTNUPd9dwAIA8Wj11lc
         9hpBOgt2ba+BNSri2HdckAntTC7cFQZeL1biHm32Wkz97BRsYHrWXnLmBczwRLsB+15p
         ej4xRjed9TgFacTbtOiwwXg3OOLG6qkOMFV5lguLbKSNlpOTfUuY18Zd1RuF0/dB4RTh
         vJBtFs2dUgF9wPAkq1fHozJKl1wYcMN8TzPO1O+Tn6rctP32HXdmH+Imf6OIZWxqJCli
         zsPg==
Content-Disposition: inline
In-Reply-To: <20130211162903.GW71256@thebe.jupiter.sigsegv.be>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kristof Provost <kristof@sigsegv.be>
Cc: linux-newbie@vger.kernel.org

On Mon, Feb 11, 2013 at 05:29:03PM +0100, Kristof Provost wrote:
> On 2013-02-11 14:38:23 (+0800), horseriver <horserivers@gmail.com> wrote:
> >   root fs is ext3 or ext4 ?
> >
> That depends on what the installer chose. The kernel doesn't
> require the root to use any specific file system.
  
  thanks!
  You mean a root filesystem will be installed on the harddisk when I install kernel on it ?
  
> 
> Regards,
> Kristof
> 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
