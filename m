Received: from out30-124.freemail.mail.aliyun.com (out30-124.freemail.mail.aliyun.com [115.124.30.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEB1183CAD
	for <linux-newbie@vger.kernel.org>; Fri, 27 Sep 2024 09:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.30.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727427700; cv=none; b=JsR3WRXq/f2laus36sT7K1OHGEZQYmSS+GEq4BrIYfUu/GbOKhOYA5rrKi0cW8jDnYLbHprpy6mFLfGn7oM0vlBRlBcsSOWcL7evCxT7X9rD5zL3APiOhva0jeF03Hf6zeq+bhO6Bq+C1VY0Pv2lkXMQt7xsSzutRmcSBokmF9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727427700; c=relaxed/simple;
	bh=YzTjBmxysKtEVln3oQzrQylw6G+tsgsam9RKWTCgH80=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=EULbt62PtUXAVkouLsWi2+KL1lCR9uNxZmgO+V/hGf8pmAA8quBtvbl3F3T/23Ct8Hm4tKEXpYatfFr+7Cx20cFP1hOharu9L4uacgEE0Ygf5VJ295hfdL5TCUCJSFiez1JuhV7u7GfnJtm8FBhNp7Rw843E1uMqw/WIIDGQBqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.alibaba.com; spf=pass smtp.mailfrom=linux.alibaba.com; dkim=pass (1024-bit key) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b=OVpqICwy; arc=none smtp.client-ip=115.124.30.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.alibaba.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.alibaba.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b="OVpqICwy"
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1727427695; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	bh=dL6sYmKLBaao7+a53IUrk82FS/jDOkYQdQIKjs7L8xI=;
	b=OVpqICwyFo0hKEXSsha7hah/OW4bPwuEuRA8lBSrtOZw+k37dwRVr1sHzlJrbskVhh23kbHZu4LFXt7QIMLQbrrZYWaRl6uAhE2CvpoNOuxoKYM4MrNFtYyp7fjXi8qtOultvj04PHHHdhTJrl9ZBFs9h8ZefXxcC4Mm8Bk8E5o=
Received: from 30.221.131.183(mailfrom:lulie@linux.alibaba.com fp:SMTPD_---0WFq8T48_1727427694)
          by smtp.aliyun-inc.com;
          Fri, 27 Sep 2024 17:01:35 +0800
Message-ID: <65c1b21b-5c45-441f-9a99-e13e5eb6b6d3@linux.alibaba.com>
Date: Fri, 27 Sep 2024 17:01:34 +0800
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Question on timestamping
To: Greg Dowd <dowdgreg@gmail.com>, linux-newbie@vger.kernel.org
References: <CADVJWLVr7PwCXYZQDipbUjr5ngPmzTO5r5Aq4HsiKkPx6ak3fw@mail.gmail.com>
From: Philo Lu <lulie@linux.alibaba.com>
In-Reply-To: <CADVJWLVr7PwCXYZQDipbUjr5ngPmzTO5r5Aq4HsiKkPx6ak3fw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Greg,

On 2024/9/19 04:22, Greg Dowd wrote:
> Hello all,
> I had a question regarding kernel timestamping.  I see definitions for
> SO_TIMESTAMPING_NEW in networking options to allow use of time
> structures containing 64bit timestamps.  However, I don't see any way
> for skbuff timestamps to pass around structures with 64 bits as the
> skb_shared_hwstamps use a typedef ktime_t which stacks the seconds and
> nanoseconds into a single 64bit value.
> I am not sure who maintains this section of the code.  Any ideas?
> 
Sorry I don't know the answer. It seems a problem of net subsystem, and 
asking the netdev ml (netdev@vger.kernel.org) would be better.

> thanks...Greg

-- 
Philo

