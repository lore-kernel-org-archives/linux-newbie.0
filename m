From: Ray Olszewski <ray@comarre.com>
Subject: Re: Extract images from zipped .eve archives
Date: Fri, 29 Nov 2002 11:58:09 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021129114801.0212fd90@celine>
References: <5.1.0.14.1.20021129083149.02134d90@celine>
 <5.1.0.14.1.20021129083149.02134d90@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211291827.gATIRCP02697@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:27 PM 11/29/02 -0500, Haines Brown wrote:
> > >The unzip utility does not extract the files, but simply lists the
> > >contents of the ZIP files.
> >
> > It should extract them as its default behavior. How exactly are you 
> running
> > unzip and what exactly is it saying?
>
>Here's an example. Root goes to the source directory and runs:
>
>   # unzip -v circuit-svg-gates*
>   Archive:  circuit-svg-gates_library.zip
>    Length   Method    Size  Ratio   Date   Time   CRC-32    Name
>   --------  ------  ------- -----   ----   ----   ------    ----
>       6830  Defl:N     3053  55%  01-26-02 17:52  19a125f7  gates_library.eve
>   --------          -------  ---                            -------
>       6830             3053  55%                            1 file

OK. Well, all I would expect unzip to do is extract gates_library.eve out 
of circuit-svg-gates_library.zip . If it does not do so when invoked as you 
do ... does "unzip -d circuit-svg-gates*" do any better?

>I didn't have much luck with a search, which is why I wondered about a
>proprietary format.

What sort of search did you try?

If I Google the actual file name "gates_library.eve" (as usual, providing 
us with the details does help) by itself, I'm pointed to this URL --

         http://www.goosee.com/

-- with indications that the file is a data file for the 
EmbeddedVectorEditor product they sell (or maybe give away .. some version 
is downloadable). It is unclear if it is in their internal (proprietary) 
format or in the SVG format they support, which they say is a W3C standard 
and can be viewed in a browser using an Adobe plug-in.

I assume you can take it from there.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
