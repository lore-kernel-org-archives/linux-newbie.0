From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: Re: Problem Mounting a Windows partition
Date: 08 Jul 2003 07:01:08 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1057662068.2074.5.camel@goldfinger.orbdesigns.com>
References: <bee5au$qdl$1@main.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <bee5au$qdl$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Tue, 2003-07-08 at 06:11, Affan Qureshi wrote:
> mount -t vfat /dev/hda6 /home/shared
 . . .
> Can anyone tell me what the problem is?

You might try with the uid= and gid= options to mount. Type man mount,
then look for the section on "Mount options for fat".

best wishes,

.brian

-- 
Brian P. Bilbrey <bilbrey@orbdesigns.com>
Orb Designs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
