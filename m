From: Don Petrowski <dpetrowski@ci.collierville.tn.us>
Subject: Re: Variable Quoting
Date: 14 Oct 2002 15:54:16 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1034628857.25913.16.camel@workwatcher>
References: <004201c2739b$220b5b90$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004201c2739b$220b5b90$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Give this a try

> string somevariable="somediretory/somesubdirectory/some\ directory\
   with\ spaces/*"

string somevariable="somediretory/somesubdirectory/some directory with
spaces/*"

> cp $somevarable $somedestination

cp "$somevarable" $somedestination



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
