.class Lu/aly/bo$a;
.super Lu/aly/dq;
.source "UserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 366
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bo$1;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Lu/aly/bo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 373
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 374
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_0

    .line 415
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 418
    invoke-virtual {p2}, Lu/aly/bo;->p()V

    return-void

    .line 377
    :cond_0
    iget-short v1, v0, Lu/aly/db;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 411
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 403
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_1

    .line 404
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bo;->d:Ljava/lang/String;

    .line 405
    invoke-virtual {p2, v4}, Lu/aly/bo;->d(Z)V

    goto :goto_1

    .line 407
    :cond_1
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 395
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_2

    .line 396
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bo;->c:Ljava/lang/String;

    .line 397
    invoke-virtual {p2, v4}, Lu/aly/bo;->c(Z)V

    goto :goto_1

    .line 399
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 387
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_3

    .line 388
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bo;->b:I

    .line 389
    invoke-virtual {p2, v4}, Lu/aly/bo;->b(Z)V

    goto :goto_1

    .line 391
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 379
    :pswitch_3
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_4

    .line 380
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    invoke-static {v0}, Lu/aly/aw;->a(I)Lu/aly/aw;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bo;->a:Lu/aly/aw;

    .line 381
    invoke-virtual {p2, v4}, Lu/aly/bo;->a(Z)V

    goto :goto_1

    .line 383
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 413
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 366
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/bo$a;->b(Lu/aly/dg;Lu/aly/bo;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 422
    invoke-virtual {p2}, Lu/aly/bo;->p()V

    .line 424
    invoke-static {}, Lu/aly/bo;->q()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 425
    iget-object v0, p2, Lu/aly/bo;->a:Lu/aly/aw;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p2}, Lu/aly/bo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lu/aly/bo;->r()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 428
    iget-object v0, p2, Lu/aly/bo;->a:Lu/aly/aw;

    invoke-virtual {v0}, Lu/aly/aw;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 429
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 432
    :cond_0
    invoke-virtual {p2}, Lu/aly/bo;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-static {}, Lu/aly/bo;->s()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 434
    iget v0, p2, Lu/aly/bo;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 435
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 437
    :cond_1
    iget-object v0, p2, Lu/aly/bo;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 438
    invoke-virtual {p2}, Lu/aly/bo;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    invoke-static {}, Lu/aly/bo;->t()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 440
    iget-object v0, p2, Lu/aly/bo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 444
    :cond_2
    iget-object v0, p2, Lu/aly/bo;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {p2}, Lu/aly/bo;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    invoke-static {}, Lu/aly/bo;->u()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 447
    iget-object p2, p2, Lu/aly/bo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 451
    :cond_3
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 452
    invoke-virtual {p1}, Lu/aly/dg;->b()V

    return-void
.end method

.method public synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 366
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/bo$a;->a(Lu/aly/dg;Lu/aly/bo;)V

    return-void
.end method
