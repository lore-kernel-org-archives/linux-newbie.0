From: Cedric <cedric@belbone.be>
Subject: Re: files and directories with spaces in bash script
Date: Tue, 27 Mar 2007 13:49:19 +0200
Message-ID: <460904BF.3080703@belbone.be>
References: <Pine.LNX.4.64.0703261049190.13397@localhost> <4607EC2B.3010003@robind.de> <Pine.LNX.4.64.0703261203490.13397@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0703261203490.13397@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: karthikv@Alum.Dartmouth.ORG
Cc: Robin Doer <robin@robind.de>, Newbie List <linux-newbie@vger.kernel.org>

Karthik Vishwanath wrote:
> On Mon, 26 Mar 2007, at 5:52pm, Robin Doer wrote to 
> karthikv@Alum.Dartmouth.ORG:
>
>> Karthik Vishwanath schrieb:
>>>
>>> #!/bin/bash
>>> # set_idv3_tags.sh
>>
>> IFS=\n # Not tested!!!
>
> Tried all variants:
> IFS=\n
> IFS="\n"
> IFS='\n'
> IFS='
> '
>
>
> They don't work.
>
try this variant:
IFS=$'\n'

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
