From: "Ray Olszewski" <lists@tcob1.net>
Subject: Re: .so, .a and .o-files
Date: Thursday, 15 Aug 2002 12:31:18 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020815_123118__0201a8e5@fidonet.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: All


At 07:25 PM 8/15/02 +0200, Axel Siebenwirth wrote:
>Hi Ray!
>
>What is the difference between the linking that gcc does i.e. to link many
>object files into an executable and  the linking that ld does?
>Is it really that gcc is just to link object files together to an executable
>and ld is there to link object files to an shared library?


gcc compiles; it does not link. It calls ld to link. ld  links multiple .o 
files into an executable that includes the hooks to use the shared-library 
functions. Then at runtime, ld.so does the runtime linking to the .so files.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
