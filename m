From: Neal Cardwell <ncardwell@google.com>
Subject: Re: TCP higher throughput that UDP?
Date: Tue, 31 Aug 2021 16:40:53 -0400
Message-ID: <CADVnQyn-+bbvhnx7PvstUNNBWVkTGd+TLPfeJxgy+BGT_or_-Q@mail.gmail.com>
References: <CANpvso5v0Lg4gDDAcBvRtHMKL5cZcpoL-RUWV_A+ogX4w2oRfw@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CEVTYjxA0qlCeTVLsq674je0pqiB88vW2YNPp/tao/4=;
        b=CO36gDQx6E3Vb3SiOKao3XjsZC5fdcBMZTwv+7f6j2Il9LqCGxArsK8N5/P+W4Vc4M
         tz0rKHrlQpu7RYJ8YUhOEhiyOcY6sCS+iVy8dYgelXnkH3qHLI3PXlJVjQARg5BoCYvu
         F3ZrgYsU/d323Iu1GpmH0Cyu9I0rT9d6XOcxAxaY8J7Xb+rmKunAIKz6DPgwrfqv0OBW
         /HD3Xt64+5yXnFhfMszJhkD+IkqqDK8kpMrd2MDflDjRDY66Enkm/nY8BnNBq8UGZir6
         IWVaFk1jgjCEw6SqCmJM1nyNWZCHEH40PskVK5x3MysxaJVVz9oMFfIAe4ePxTwmXyvV
         A7Jg==
In-Reply-To: <CANpvso5v0Lg4gDDAcBvRtHMKL5cZcpoL-RUWV_A+ogX4w2oRfw@mail.gmail.com>
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
To: Eric Curtin <ericcurtin17@gmail.com>
Cc: netdev@vger.kernel.org, linux-newbie@vger.kernel.org, Eric Dumazet <edumazet@google.com>, Willem de Bruijn <willemb@google.com>

On Tue, Aug 31, 2021 at 4:25 PM Eric Curtin <ericcurtin17@gmail.com> wrote:
>
> Hi Guys,
>
> I've been researching quantitatively various protocols QUIC, TCP, UDP,
> SCTP, etc. on modern hardware. And some TLS, DTLS and plain text
> variants of these protocols. I've avoided tuning kernel parameters so
> much and focused more on adjusting what I can in user space on an out
> of the box kernel, as if I was deploying on a machine where I did not
> have root access (lets say an Android phone, even though these results
> come from a laptop for simplicity). I did make a minor exception in
> that I had to turn on SCTP.
>
> I have a small client/server binary that implements bare bones
> versions of TCP, UDP and SCTP. The server allows you to specify which
> file clients will pull. And the client lets you specify which file to
> write the pulled data to (often I use /dev/null here). I run both on
> 127.0.0.1 . I would have thought (obviously I was wrong) that UDP
> would be faster, given no acks, retransmits, checksums, etc. as many
> laymen would tell you. But on this machine TCP is faster more often
> than not. This has been answered online with different answers of the
> reasoning (hardware offload, how packet fragmentation is handled, TCP
> tuned more for throughput, UDP tuned more for latency, etc.). I'm just
> curious if someone could let me know the most significant factor (or
> factors) here these days? Things like strace don't reveal much.
> Changing buffer size to the read/write/send/recv system calls alters
> things but TCP seems to still win regardless of buffer size.

These articles have some nice discussion and description of
experimental results that shed some light on the differences between
UDP performance and TCP performance, and what it takes to make UDP
performance approximate TCP on Linux:

  Optimizing UDP for content delivery: GSO, pacing and zerocopy
  http://vger.kernel.org/lpc_net2018_talks/willemdebruijn-lpc2018-udpgso-pa=
per-DRAFT-1.pdf

  Can QUIC match TCP=E2=80=99s computational efficiency?
  https://www.fastly.com/blog/measuring-quic-vs-tcp-computational-efficienc=
y

I would guess segmentation offload for TCP is probably the biggest
factor in your experiments.

best,
neal
