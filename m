From: Zhukov Andrew <zhukov.andrew@xakep.ru>
Subject: generic_make_request - callback does not work
Date: Sat, 24 Mar 2012 20:38:36 +0400
Message-ID: <CAA3FJ=SNw9AEvriERDfyPuwcwLEkeku=Zb8q-Rp48Yyxwgx95w@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi all!

I have the next code of driver:

void my_end_request(struct bio* child, int error)
{
  my_private_t*    private = child->bi_private;
  complete((struct completion*)private->completion);
}

int my_submit_request
(
    my_handle_t*   handle,
    int             rw,
    int             mode,
    struct bio*     bio,
    void*           user_private_data,
    bio_end_io_t*   user_callback
)
{
  struct bio*       child     = NULL;
  my_private_t*    private   = NULL;
  my_registry_t*   registry  = NULL;
  int               direction = -1;
  DECLARE_COMPLETION_ONSTACK(completion);

  registry = handle->registry;

  direction = bio_data_dir(bio);

  child = bio_clone(bio, GFP_NOIO);

  private = my_private_get(registry->my_cache_private); // here we get
a structure, that contains some of our data

  child->bi_end_io = (bio_end_io_t*)my_end_request; // set the callback

  child->bi_bdev = handle->bdev; // reading will be doing from this device

  private->completion = &completion;

  private->parent = bio;
  private->user_private_data = user_private_data;
  private->user_callback = user_callback;
  private->mode = mode;
  private->handle = handle;
  child->bi_private = private;

  generic_make_request(child);
  wait_for_completion(&completion); // waiting to complete the reading

  // yet another code

}

I'm trying to redirect requests (only read) to another device. In a
function my_submit_request I'm call the bio_clone and then
generic_make_request.
And also I'm call wait_for_completion (& completion) for waiting for
the reading. The callback function should work when the reading will
be completed.
The problem is, no callback call, and wait_for_completion does not
return control.
What am I doing wrong?
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
