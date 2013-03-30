From: "Anatoliy Sivov" <mm05@mail.ru>
Subject: Re: seq in tcp protocol
Date: Sat, 30 Mar 2013 23:17:50 +0400
Message-ID: <op.wurw70eqsqfl9w@xn---hp-soa>
References: <20130322133008.GA1348@debian.localdomain>
 <20130323133117.GB9539@thebe.jupiter.sigsegv.be>
 <20130324032932.GB23928@debian.localdomain>
 <CAOXuEsxyugU-Z2yVX-8T-OdAxJcxh0gWFMVhX0CNZqBHYDzS3Q@mail.gmail.com>
 <20130324115711.GA9706@debian.localdomain>
 <20130324120815.GD9539@thebe.jupiter.sigsegv.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail2;
	h=In-Reply-To:Message-ID:From:Content-Transfer-Encoding:MIME-Version:Date:References:Subject:Cc:To:Content-Type; bh=gtAOyUadA+SZR3Sgjg96S6rxYklX3/cVbkETW5yvg9w=;
	b=MgLkzIHTWUC5ycgZYeTPUJub+JN9SJHraqA0nHgbEun1Ei0d9VEm0wlt7GaPN8K62RbaxhFxDrZ/1u5dD4ObDFxofFayCqj3buddxWwrhhgRWRZSx4Pf61lKzXF5GVWPWY/ZUsz4HevbQpW+IG7kdsg4U974KftVIKnYHur9aZk=;
In-Reply-To: <20130324120815.GD9539@thebe.jupiter.sigsegv.be>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: ishare <june.tune.sea@gmail.com>, Kristof Provost <kristof@sigsegv.be>
Cc: Aniruddha Bhattacharyya <aniruddha.aot@gmail.com>, linux-newbie@vger.kernel.org

I could be wrong, but I guess linux uses Minshall's modification of  
Nagle's algorithm.


>>
>>  How does the sender decide how many packet is needed to transfer one  
>> buffer and
>>  manager the seq orders of them ?
>>
> http://en.wikipedia.org/wiki/Nagle%27s_algorithm
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
