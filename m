From: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>
Subject: Re: Page Borders in Latex
Date: Tue, 28 May 2002 08:50:21 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205280850.21794.mssnlayam@cs.annauniv.edu>
References: <200205262029.21973.knutties@indiainfo.com> <20020526170744.GA338@cam.ac.uk>
Reply-To: mssnlayam@cs.annauniv.edu
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020526170744.GA338@cam.ac.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Steven Smith <sos22@cam.ac.uk>
Cc: Natarajan K <knutties@eth.net>, linux-newbie@vger.kernel.org

On Sunday 26 May 2002 10:37 pm, Steven Smith wrote:
  > There are probably better ways, but the fancybox package provides a way
  > to do this. In the document preamble, go:
  >
  > \usepackage{fancybox}
  >
  > and then once you get into the document proper, go:
  >
  > \fancypage{\fbox}{}
  >
  > This needs to be one of the first things after the \begin{document}.
  >
  > As I said, there are probably better ways, but that's the first one
  > which comes to mind.
The above method works, but there is a problem.
The box is too close to the text. Is there some way to
have a gap between the box and the text.
I think you would have an answer.
Thank you.

Bye,
Suriya Narayanan M S
-- 
Guru Brahma Gurur Vishnu
Gurur Dhevo Maheshwaraha
Gurur Saakshaath Parabramha
Thasmai Shree Gurave Namaha

Public key at www.keyserver.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
