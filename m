From: "Ray Olszewski" <lists@tcob1.net>
Subject: stripping flies (was: Re: .so, .a and .o-files)
Date: Thursday, 15 Aug 2002 08:59:21 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020815_085921__75f821c9@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


I changed the Subject: line to refer to the question you actually asked.

At 03:44 PM 8/15/02 +0200, Axel Siebenwirth wrote:
>Me again.
>
>Whats the use of stripping object files of their symbols. Symbols reflect
>the functions in an object file, right?


Stripping makes the files smaller, which matters in some cases. The symbols 
are valuable in debugging problems but are not needed simply to execute the 
object code.



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
