From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Extract images from zipped .eve archives
Date: Fri, 29 Nov 2002 13:27:12 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211291827.gATIRCP02697@hartford-hwp.com>
References: <5.1.0.14.1.20021129083149.02134d90@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021129083149.02134d90@celine> (message from Ray
	Olszewski on Fri, 29 Nov 2002 08:36:39 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

> >The unzip utility does not extract the files, but simply lists the
> >contents of the ZIP files.
> 
> It should extract them as its default behavior. How exactly are you running 
> unzip and what exactly is it saying?

Here's an example. Root goes to the source directory and runs:

  # unzip -v circuit-svg-gates*
  Archive:  circuit-svg-gates_library.zip
   Length   Method    Size  Ratio   Date   Time   CRC-32    Name
  --------  ------  ------- -----   ----   ----   ------    ----
      6830  Defl:N     3053  55%  01-26-02 17:52  19a125f7  gates_library.eve
  --------          -------  ---                            -------
      6830             3053  55%                            1 file

> Never having heard of them, I tried a Google search. The only meaningful 
> match I found was here --
> 
>          http://www.techtutorials.com/fileformats.shtml
> 
> -- which says "EVE - TTMaker Event Scheduling File.".

I didn't have much luck with a search, which is why I wondered about a
proprietary format. 

These zip files serve a simple little proprietary graphics application
that draws electroniic circuit schematics. Event scheduling seems
irrelevant. 

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
