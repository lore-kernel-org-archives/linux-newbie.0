Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C45D4C6D;
	Fri,  5 Dec 2025 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.89.141.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764971318; cv=none; b=XSdct70AhUIv5X6Kj0Ce9W4lXXaQ6fS9GW6UPURpaaeLuvAlbK+3LJ0VCk+1rApdFI9IQXN70pABgtQOamjUNno0gk8+dF+3v4hUBeEdwvThfuESm52pfMxDNs7fx0W+dHGHVCGhs2t1ncC95v/Zh4ufIC7YBIZVDHu6qqxM/nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764971318; c=relaxed/simple;
	bh=c+hv3BAcCb7DgpyCWj/w81P0BaCqhwwn2nIMYctxvAY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MVqr71IYaAQcC9dkt0AyHYIRMnqQ1N2a/Dfxl8Vo92nqbZsMBaedWecp+kdmjcYiTk2wltPGr8DvtSFRJSh7SISkBZQOPixI4+qWipK56UTP0Rs4s1U4JeO6gEORRRljBNURnn9ygwsr5bLxEBmS3jTP5o/F4iv1Nmbf/dJRnx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zeniv.linux.org.uk; spf=none smtp.mailfrom=ftp.linux.org.uk; dkim=pass (2048-bit key) header.d=linux.org.uk header.i=@linux.org.uk header.b=rI8sDmYf; arc=none smtp.client-ip=62.89.141.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zeniv.linux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ftp.linux.org.uk
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linux.org.uk header.i=@linux.org.uk header.b="rI8sDmYf"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=IYLPJY6iI84uFeCW5lTDrm34jIsGMo2HtF0Da29fUeQ=; b=rI8sDmYfbHdh4oQLcazCEYkBWE
	Z7MH1RTXnl6pKpaCruQ+ecbMgi/vrHgyit65ZuFDJXfNdcwfdF4dbssdSfum/1bsmhhocef611WbI
	pX5w3h4y0eeZ+eW9DiNYH75ZMf9z91hWwYLuJoGSwoIrtd20zF3ZKHnA1RsoOwft1KN3VPoZCuzPn
	3i/eWLhPaR8/gkvC3ARCeaouNn3UB2YIQ0GorvdFVb7LcDsauaV5oxr4bpdMehvB4zfa673tJb+EV
	bgoonnf0ORHejXuU9yUNO2Agy3hsM1qEMrErpZ0jidGGE9ycgZDwAIEHK2wXlQSioUK+Vlmq+t8mi
	+Ccq9kzg==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.99 #2 (Red Hat Linux))
	id 1vRdfY-00000001ofJ-3zoT;
	Fri, 05 Dec 2025 21:48:53 +0000
Date: Fri, 5 Dec 2025 21:48:52 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Dirk Gouders <dirk@gouders.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jslaby@suse.com>, linux-kernel@vger.kernel.org,
	linux-newbie@vger.kernel.org
Subject: Re: pty: childs don't always react on close(2)
Message-ID: <20251205214852.GL1712166@ZenIV>
References: <gho6oczk2f.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <gho6oczk2f.fsf@gouders.net>
Sender: Al Viro <viro@ftp.linux.org.uk>

On Fri, Dec 05, 2025 at 10:37:44PM +0100, Dirk Gouders wrote:

> 	child_pid1 = forkpty(&pty_fd1, NULL, NULL, NULL);

You do realize that it will inherit all your opened descriptors,
including pty_fd, right?

...

> 	close(pty_fd);

... which doesn't do anything to the second child's descriptor
table, including the descriptor that refers to the same opened file.
IOW, the IO channel (== opened file) is very much opened after
that close() - descriptors refering to it still exist.
