From: Matthew Wilcox <matthew@wil.cx>
Subject: Re: [Pcihpd-discuss] How to change PCI Configuration space?
Date: Tue, 30 Aug 2005 14:11:49 +0100
Message-ID: <20050830131149.GK26314@parcelfarce.linux.theplanet.co.uk>
References: <b115cb5f0508292147de16584@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b115cb5f0508292147de16584@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: pcihpd-discuss@lists.sourceforge.net, linux-newbie@vger.kernel.org, kenux-kernel@vger.kernel.org, dkumar@noida.hcltech.com, "Sanjay Kumar, Noida" <sanjayku@hcltech.com>

On Tue, Aug 30, 2005 at 01:47:12PM +0900, Rajat Jain wrote:
> I want to change the PCI Configuration space of a particular device in
> my system. I am trying to use the "pcitweak" utility to do so, but am
> not suceeding. I would appreciate if some body could provide me any
> pointers in how to do so.

Don't use pcitweak.  Use setpci instead.

-- 
"Next the statesmen will invent cheap lies, putting the blame upon 
the nation that is attacked, and every man will be glad of those
conscience-soothing falsities, and will diligently study them, and refuse
to examine any refutations of them; and thus he will by and by convince 
himself that the war is just, and will thank God for the better sleep 
he enjoys after this process of grotesque self-deception." -- Mark Twain
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
