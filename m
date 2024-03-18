Received: from ms11p00im-qufo17291301.me.com (ms11p00im-qufo17291301.me.com [17.58.38.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511672032D
	for <linux-newbie@vger.kernel.org>; Mon, 18 Mar 2024 02:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.38.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710727244; cv=none; b=QipteGdoTsUUGrC7aG+2qhqt58FW+b4FNXyhal/lNqa6XKfDJOOhZMYQQaE7M84a6z0ytYqydvuPXg1Os0pnKR37V9aWxLsLeDOnlcNNddjmQK5l9r6/yk508w+szx4XNry/8q0qo3KZn8/grfvHBb24d7L5kmzSSwQ69ggWmEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710727244; c=relaxed/simple;
	bh=f2AP+S4EIjODj3dxE0nIgKtUtCto2al5ex3k8W1snOc=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=FQvLkX3zOThBaGbFhP9yqZ+QOgs28jJ2tGU0LCJZMU7ITXi21D0SwrdnCxg0314s5nAlIGNWpQhX3eDbthjfY+c4nHj///USruboli1twGJLhuHCFC13v1IDZyWSiN4rSzaH+QWCuSXqwNPLSkHAbE21RvJ9aaLppe3QnTPwJK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=ZnT9AxGq; arc=none smtp.client-ip=17.58.38.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="ZnT9AxGq"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1710727242;
	bh=f2AP+S4EIjODj3dxE0nIgKtUtCto2al5ex3k8W1snOc=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
	b=ZnT9AxGq8owzqZf+ekAJvVWctOmGQm9BLmFBqXl+FBr/DsEZxXSDUDq69nLK3tMXU
	 xzGnse+ezJMjFUBGpt2LxNAjeourPYOUQcmIaJJ5FGFGg+vYBVdLTqhZWm58FZBRQ/
	 NPipn/h+yJJzbF/250q/6zONeuTAgtBarsapgIELUH7c5bIxvMuGzuX53BTn9nn0Q7
	 1ixJYQoUQ7zy3UKshSm41f1tytljivsgG1KlJkklj4CQXiGWpJRSxrSWs2ksRXXxw+
	 h8Y+jRuHnCiIxd3y8HD1mZDm81dIp7diaiic2CZSSBRS4XGEAzJC54T9jMRrDLTIwv
	 BFG07OqHcSB3Q==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com [17.57.154.19])
	by ms11p00im-qufo17291301.me.com (Postfix) with ESMTPSA id DC228940299;
	Mon, 18 Mar 2024 02:00:41 +0000 (UTC)
From: Jonathan Martin <workspace.public@icloud.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Date: Sun, 17 Mar 2024 19:00:15 -0700
Subject: Hello
Message-Id: <D9574CC8-5147-47D8-A287-520C67092133@icloud.com>
To: linux-newbie@vger.kernel.org
X-Mailer: Apple Mail (2.3774.500.171.1.1)
X-Proofpoint-ORIG-GUID: 4IWsFZpDWq6583G6AYw3Lkpf0JUc1mEM
X-Proofpoint-GUID: 4IWsFZpDWq6583G6AYw3Lkpf0JUc1mEM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-17_12,2024-03-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 mlxscore=0
 phishscore=0 mlxlogscore=980 clxscore=1015 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2403180014

Hello All;

I don=E2=80=99t know who is here or who is listening and I assume this =
is a semi-public archive.

I=E2=80=99m not really much of a newbie but I have let my excitement =
turn me into an idiot often enough to think that I am.

It seems prudent to introduce myself here for the sake of anyone=E2=80=99s=
 email filters since as I may recall Linus mentioning many years ago =
that he=E2=80=99d blocked several domains to cut out worthless clutter. =
I can=E2=80=99t actively discourage anyone from this in my case due to =
line 2.

I am not dedicated to any subject and my expertise is probably not =
relevant, but I am a fan of c2 wiki and I expect similar conversations, =
though iCloud can=E2=80=99t seem to handle the message volume of many =
lists that I try to subscribe.

~~~~~~

Thanks for being here!

~~~~~~=
