From: "Anatoliy Sivov" <mm05@mail.ru>
Subject: Re: can not find definition of ntohl
Date: Sat, 30 Mar 2013 21:10:51 +0400
Message-ID: <op.wurrcdozsqfl9w@xn---hp-soa>
References: <20130329113322.GA2584@debian.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail2;
	h=In-Reply-To:Message-ID:From:Content-Transfer-Encoding:MIME-Version:Date:References:Subject:To:Content-Type; bh=B6MzGH/UwnSQlCswdsf+8bp7RWi6Z8fDS5VKCV3D76A=;
	b=unRcwkuErhL9QDNeAigiFsihJqdrLo4ASo70yKTYajXeSWrKUKywOo9KDFGBNFAZAUBIcKERtuaB0l92mKlZDTH8e7uuoCyjqwc9g3fMsenZoKLgrc5alwjEVLIg1A/w9pFCFtO07euqMtPtOBWTaT19KkP5swSlDVTb4vZhs6w=;
In-Reply-To: <20130329113322.GA2584@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: linux-newbie@vger.kernel.org, ishare <june.tune.sea@gmail.com>



>
>  why I have not find the definiton of ntohl in kernel source ?
>
>  is there anyone can give some clues to me ?
>

I guess, ntohl was always defined as macro in  
include/linux/byteorder/generic.h
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
