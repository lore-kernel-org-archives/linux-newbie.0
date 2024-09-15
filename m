Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C371C6894
	for <linux-newbie@vger.kernel.org>; Sun, 15 Sep 2024 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726410595; cv=none; b=rFtMpxr8gAsvWPUTDYVTnF8/a850hxW/DSELjOg49IGnQrlma8PP3nPNW3/kLACq/zPnubBsH7j/SE8WD4NDeH40FLyUsCluERNnIwQB6/WGVDFyo8J9sz1aqd2aoGJ0Zfl4JSdr1UR7LhCMqNYet5a/NE+RbpfeCxIDetQ3IeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726410595; c=relaxed/simple;
	bh=fDwZmtc//P2Q2CdWV3iL8VGYYtZ7Lfy4KE3dIScwPWw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P6JFfUaUEukZ6MXERKd1Upqr04x4Oq7HxBNSYNC3a+0nU/oYFOtEEyk7h1NNML4H6OTn8qfi4zpon7lPjfHwktzQb5Zx476liNpN57sNvUeYKY+CdnX8tyZDK2nwqO5q9YP8pgkrR+SGlp0PLYZnQMYdggWpw1j1acQzmA92gu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qrator.net; spf=pass smtp.mailfrom=qrator.net; dkim=pass (1024-bit key) header.d=qrator.net header.i=@qrator.net header.b=E3Cqre1y; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qrator.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qrator.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qrator.net header.i=@qrator.net header.b="E3Cqre1y"
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-7d7a9200947so1396072a12.3
        for <linux-newbie@vger.kernel.org>; Sun, 15 Sep 2024 07:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qrator.net; s=google; t=1726410593; x=1727015393; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iiN1biVjfblfJCNoQE1Fqe/UWwPtym8JKqZfHUuB314=;
        b=E3Cqre1yODiQc1glrsFIamYw5clN7O4XJTuNIwr1eZ7z9oU0dYxGv9Ip84rjdEw1g/
         X1ZbL2GJzyCXofP73mYXd8WAn6ndIhVYff8K4vuE91l7vKWYbHIE1OGVHL/a0Nv62EOs
         4HxzQO7HVHS43AjCIGXXVjUR3PW4ClBOor6H4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726410593; x=1727015393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iiN1biVjfblfJCNoQE1Fqe/UWwPtym8JKqZfHUuB314=;
        b=KUMzVAprAMKX3bMiQloXoaFwml4cNcpGtvrSwEa86vr+AQsNYEKSfVy7UiwEUfSu2/
         0X+YGk+2AxtrLzh0mpRdFrvpioK0Da888qomweO3S98BdjYmTiQYUgmcKA/Ulxql9JXp
         XPKpAzgtDi/+JR50H+uGnD0K40QD4bfO0fX4S/ls1bjdC4d8j7JEGAbNp0NaMQlwTLGq
         9nSbCm6+4gvkfQ6F/+BM2w2fR1Yvmk7It63KoWBNO//RlZW57k9cA2w08kiCdXSn4B5+
         lvE8S6dFLDm2AqVIApfux3lhzmKxi12fwCz2/n9d853/odUf/N8VI0A9EitopVHJrIzY
         9jiA==
X-Forwarded-Encrypted: i=1; AJvYcCWZXME22xyoEaEJcJxWW0Rk3a8QbEwiu88AG5wiSShU6z1IvKyryGbowtKlSt+OAxe0QZzPJ2y10utyRe0=@vger.kernel.org
X-Gm-Message-State: AOJu0YwsKWxaCbpYKpKFrQvLhYSuW/F7Jbpua2Viz4XtBdp8BVJrrUoN
	aX62QyWJ2yq/vT7y0jObT6OAkTchkJ9t1yT8Ne5pJyPzvMc30Yi2nwCUl9hHaBxQWf9ujLHq2Gi
	5qmIeOrjbyIJq5BkSDfIk+jj2g8HY2riRiBCSKg==
X-Google-Smtp-Source: AGHT+IEmTfcSy2BdcoIbFnHj7Jr0iZmswWCzXnNS3Vc74mJiumfaNvb3/VQsIXzgYHEgrmdiu+CwlJ2gQc7qP9zyBkE=
X-Received: by 2002:a17:90b:1806:b0:2d8:f12f:6bed with SMTP id
 98e67ed59e1d1-2dbb9dc122emr11056192a91.3.1726410593238; Sun, 15 Sep 2024
 07:29:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-newbie@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
List-Subscribe: <mailto:linux-newbie+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-newbie+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240622164013.24488-2-green@qrator.net> <Zncwl4DAwTQL0YDl@gallifrey>
In-Reply-To: <Zncwl4DAwTQL0YDl@gallifrey>
From: Alexander Zubkov <green@qrator.net>
Date: Sun, 15 Sep 2024 16:29:26 +0200
Message-ID: <CABr+u0b-RAV9hz25O5a3Axz6s9vYLVc5shr8xAgPsykP_XRFgw@mail.gmail.com>
Subject: Re: [PATCH] Fix misspelling of "accept*"
To: "Dr. David Alan Gilbert" <linux@treblig.org>
Cc: pabeni@redhat.com, linux-kernel@vger.kernel.org, 
	linux-newbie@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I just wanted to kindly check in on the status of my patch. Please let
me know if any further action is needed from my side.

Thanks for your time!

Best regards,
Alexander Zubkov

On Sat, Jun 22, 2024 at 10:14=E2=80=AFPM Dr. David Alan Gilbert
<linux@treblig.org> wrote:
>
> * Alexander Zubkov (green@qrator.net) wrote:
> > Several files have "accept*" misspelled as "accpet*" in the comments.
> > Fix all such occurrences.
> >
> > Signed-off-by: Alexander Zubkov <green@qrator.net>
>
> Reviewed-by: Dr. David Alan Gilbert <linux@treblig.org>
>
> hmm, should probably cc in some maintainers, I guess networking.
> (added netdev and Paolo)
>
> Dave
>
> > ---
> >  drivers/infiniband/hw/irdma/cm.c                              | 2 +-
> >  drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c | 4 ++--
> >  drivers/net/ethernet/natsemi/ns83820.c                        | 2 +-
> >  include/uapi/linux/udp.h                                      | 2 +-
> >  4 files changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/infiniband/hw/irdma/cm.c b/drivers/infiniband/hw/i=
rdma/cm.c
> > index 36bb7e5ce..ce8d821bd 100644
> > --- a/drivers/infiniband/hw/irdma/cm.c
> > +++ b/drivers/infiniband/hw/irdma/cm.c
> > @@ -3631,7 +3631,7 @@ void irdma_free_lsmm_rsrc(struct irdma_qp *iwqp)
> >  /**
> >   * irdma_accept - registered call for connection to be accepted
> >   * @cm_id: cm information for passive connection
> > - * @conn_param: accpet parameters
> > + * @conn_param: accept parameters
> >   */
> >  int irdma_accept(struct iw_cm_id *cm_id, struct iw_cm_conn_param *conn=
_param)
> >  {
> > diff --git a/drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_mai=
n.c b/drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c
> > index 455a54708..96fd31d75 100644
> > --- a/drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c
> > +++ b/drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_main.c
> > @@ -342,8 +342,8 @@ static struct sk_buff *copy_gl_to_skb_pkt(const str=
uct pkt_gl *gl,
> >  {
> >       struct sk_buff *skb;
> >
> > -     /* Allocate space for cpl_pass_accpet_req which will be synthesiz=
ed by
> > -      * driver. Once driver synthesizes cpl_pass_accpet_req the skb wi=
ll go
> > +     /* Allocate space for cpl_pass_accept_req which will be synthesiz=
ed by
> > +      * driver. Once driver synthesizes cpl_pass_accept_req the skb wi=
ll go
> >        * through the regular cpl_pass_accept_req processing in TOM.
> >        */
> >       skb =3D alloc_skb(gl->tot_len + sizeof(struct cpl_pass_accept_req=
)
> > diff --git a/drivers/net/ethernet/natsemi/ns83820.c b/drivers/net/ether=
net/natsemi/ns83820.c
> > index 998586872..bea969dfa 100644
> > --- a/drivers/net/ethernet/natsemi/ns83820.c
> > +++ b/drivers/net/ethernet/natsemi/ns83820.c
> > @@ -2090,7 +2090,7 @@ static int ns83820_init_one(struct pci_dev *pci_d=
ev,
> >        */
> >       /* Ramit : 1024 DMA is not a good idea, it ends up banging
> >        * some DELL and COMPAQ SMP systems
> > -      * Turn on ALP, only we are accpeting Jumbo Packets */
> > +      * Turn on ALP, only we are accepting Jumbo Packets */
> >       writel(RXCFG_AEP | RXCFG_ARP | RXCFG_AIRL | RXCFG_RX_FD
> >               | RXCFG_STRIPCRC
> >               //| RXCFG_ALP
> > diff --git a/include/uapi/linux/udp.h b/include/uapi/linux/udp.h
> > index 1a0fe8b15..d85d671de 100644
> > --- a/include/uapi/linux/udp.h
> > +++ b/include/uapi/linux/udp.h
> > @@ -31,7 +31,7 @@ struct udphdr {
> >  #define UDP_CORK     1       /* Never send partially complete segments=
 */
> >  #define UDP_ENCAP    100     /* Set the socket to accept encapsulated =
packets */
> >  #define UDP_NO_CHECK6_TX 101 /* Disable sending checksum for UDP6X */
> > -#define UDP_NO_CHECK6_RX 102 /* Disable accpeting checksum for UDP6 */
> > +#define UDP_NO_CHECK6_RX 102 /* Disable accepting checksum for UDP6 */
> >  #define UDP_SEGMENT  103     /* Set GSO segmentation size */
> >  #define UDP_GRO              104     /* This socket can receive UDP GR=
O packets */
> >
> > --
> > 2.45.2
> >
> >
> --
>  -----Open up your eyes, open up your mind, open up your code -------
> / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \
> \        dave @ treblig.org |                               | In Hex /
>  \ _________________________|_____ http://www.treblig.org   |_______/
