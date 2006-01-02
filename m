From: =?UTF-8?B?QXJ0xatyYXMgTW9za3ZpbmFz?= <arturas.moskvinas@gmail.com>
Subject: Re: gcc-3.3.3 native compiler build error on FC4
Date: Mon, 02 Jan 2006 14:51:56 +0200
Message-ID: <43B921EC.7010001@gmail.com>
References: <3AEC1E10243A314391FE9C01CD65429B223B4B@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3AEC1E10243A314391FE9C01CD65429B223B4B@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org


>Dear All,
>
>I have a system running FC4 whose default gcc is 4.0.0.
>I have requirement of gcc-3.3.3 i.e. FC2 default gcc over the FC4.
>
>I am trying to install the gcc rpms found in the FC2 CD's.
>It looks like the gcc rpm has a check to see whether the installed gcc is the latest one.
>And seeing that installed gcc is the latest one It stops.
>
>What would be a better approach of install the gcc 3.3.3 over my FC4 dist?
>
>I also downloaded the gcc 3.3.3 from gcc.gnu.org.I am failing to get the build successful.
>I followed the following steps:
>
>  
>
If gcc 3.2.3 is not too old for you, then you can install official 
package "compat-gcc-32", and have two compilers gcc 4, and gcc 3.2 (only 
gcc 3.2 is executed using command gcc32).

Arturas M.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
