.class Lu/aly/bc$a;
.super Lu/aly/dq;
.source "InstantMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bc$1;)V
    .locals 0

    .line 419
    invoke-direct {p0}, Lu/aly/bc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bc;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 426
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 427
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_0

    .line 501
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 504
    invoke-virtual {p2}, Lu/aly/bc;->v()V

    return-void

    .line 430
    :cond_0
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 497
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_4

    .line 478
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_2

    .line 480
    invoke-virtual {p1}, Lu/aly/dg;->p()Lu/aly/dc;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/dc;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/bc;->d:Ljava/util/List;

    .line 482
    :goto_1
    iget v1, v0, Lu/aly/dc;->b:I

    if-ge v2, v1, :cond_1

    .line 485
    new-instance v1, Lu/aly/av;

    invoke-direct {v1}, Lu/aly/av;-><init>()V

    .line 486
    invoke-virtual {v1, p1}, Lu/aly/av;->a(Lu/aly/dg;)V

    .line 487
    iget-object v3, p2, Lu/aly/bc;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 489
    :cond_1
    invoke-virtual {p1}, Lu/aly/dg;->q()V

    .line 491
    invoke-virtual {p2, v4}, Lu/aly/bc;->d(Z)V

    goto/16 :goto_4

    .line 493
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_4

    .line 459
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_4

    .line 461
    invoke-virtual {p1}, Lu/aly/dg;->p()Lu/aly/dc;

    move-result-object v0

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/dc;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/bc;->c:Ljava/util/List;

    .line 463
    :goto_2
    iget v1, v0, Lu/aly/dc;->b:I

    if-ge v2, v1, :cond_3

    .line 466
    new-instance v1, Lu/aly/av;

    invoke-direct {v1}, Lu/aly/av;-><init>()V

    .line 467
    invoke-virtual {v1, p1}, Lu/aly/av;->a(Lu/aly/dg;)V

    .line 468
    iget-object v3, p2, Lu/aly/bc;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 470
    :cond_3
    invoke-virtual {p1}, Lu/aly/dg;->q()V

    .line 472
    invoke-virtual {p2, v4}, Lu/aly/bc;->c(Z)V

    goto :goto_4

    .line 474
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_4

    .line 440
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_6

    .line 442
    invoke-virtual {p1}, Lu/aly/dg;->p()Lu/aly/dc;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/dc;->b:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/bc;->b:Ljava/util/List;

    .line 444
    :goto_3
    iget v1, v0, Lu/aly/dc;->b:I

    if-ge v2, v1, :cond_5

    .line 447
    new-instance v1, Lu/aly/at;

    invoke-direct {v1}, Lu/aly/at;-><init>()V

    .line 448
    invoke-virtual {v1, p1}, Lu/aly/at;->a(Lu/aly/dg;)V

    .line 449
    iget-object v3, p2, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 451
    :cond_5
    invoke-virtual {p1}, Lu/aly/dg;->q()V

    .line 453
    invoke-virtual {p2, v4}, Lu/aly/bc;->b(Z)V

    goto :goto_4

    .line 455
    :cond_6
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_4

    .line 432
    :pswitch_3
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    .line 433
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bc;->a:Ljava/lang/String;

    .line 434
    invoke-virtual {p2, v4}, Lu/aly/bc;->a(Z)V

    goto :goto_4

    .line 436
    :cond_7
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 499
    :goto_4
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto/16 :goto_0

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

    .line 419
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$a;->b(Lu/aly/dg;Lu/aly/bc;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 508
    invoke-virtual {p2}, Lu/aly/bc;->v()V

    .line 510
    invoke-static {}, Lu/aly/bc;->w()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 511
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lu/aly/bc;->x()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 513
    iget-object v0, p2, Lu/aly/bc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 516
    :cond_0
    iget-object v0, p2, Lu/aly/bc;->b:Ljava/util/List;

    const/16 v1, 0xc

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {p2}, Lu/aly/bc;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    invoke-static {}, Lu/aly/bc;->y()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 520
    new-instance v0, Lu/aly/dc;

    iget-object v2, p2, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/dc;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dc;)V

    .line 521
    iget-object v0, p2, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/at;

    .line 523
    invoke-virtual {v2, p1}, Lu/aly/at;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p1}, Lu/aly/dg;->f()V

    .line 527
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 530
    :cond_2
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 531
    invoke-virtual {p2}, Lu/aly/bc;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    invoke-static {}, Lu/aly/bc;->z()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 534
    new-instance v0, Lu/aly/dc;

    iget-object v2, p2, Lu/aly/bc;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/dc;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dc;)V

    .line 535
    iget-object v0, p2, Lu/aly/bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/av;

    .line 537
    invoke-virtual {v2, p1}, Lu/aly/av;->b(Lu/aly/dg;)V

    goto :goto_1

    .line 539
    :cond_3
    invoke-virtual {p1}, Lu/aly/dg;->f()V

    .line 541
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 544
    :cond_4
    iget-object v0, p2, Lu/aly/bc;->d:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 545
    invoke-virtual {p2}, Lu/aly/bc;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    invoke-static {}, Lu/aly/bc;->A()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 548
    new-instance v0, Lu/aly/dc;

    iget-object v2, p2, Lu/aly/bc;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/dc;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dc;)V

    .line 549
    iget-object p2, p2, Lu/aly/bc;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 551
    invoke-virtual {v0, p1}, Lu/aly/av;->b(Lu/aly/dg;)V

    goto :goto_2

    .line 553
    :cond_5
    invoke-virtual {p1}, Lu/aly/dg;->f()V

    .line 555
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 558
    :cond_6
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 559
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

    .line 419
    check-cast p2, Lu/aly/bc;

    invoke-virtual {p0, p1, p2}, Lu/aly/bc$a;->a(Lu/aly/dg;Lu/aly/bc;)V

    return-void
.end method
