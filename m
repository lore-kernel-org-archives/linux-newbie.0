From: joy <gracecott@sancharnet.in>
Subject: Re: XFree86 problems (ATI radeon video card)
Date: Tue, 30 Mar 2004 19:12:57 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40697961.1050805@sancharnet.in>
References: <00b701c415a0$c1ab34b0$bb7ac19d@King>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Philippe De Neve <Philippe.deneve@intec.ugent.be>, linux-newbie@vger.kernel.org

about the log which you sent me and the Xf86config, it seems to me that 
Xfree86 is trying to open font directories
 not available. install aptitude (if possible) and search for fonts to 
be installed. I recommend aptitude coz it has an
easier interface than dselect ( which I hate with a vengeance, but keep 
it installed nevertheless). Also according to
you the font server doesn't start. Since you have installed only the 
bare minimum  needed, check if you have xfs,
the x font server package installed.

Cheers,
Joy

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
