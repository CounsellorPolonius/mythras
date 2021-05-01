.class Lu/aly/av$a;
.super Lu/aly/dq;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/av;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 423
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/av$1;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Lu/aly/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/av;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 427
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 430
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 431
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_1

    .line 493
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 496
    invoke-virtual {p2}, Lu/aly/av;->s()Z

    move-result p1

    if-nez p1, :cond_0

    .line 497
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 499
    :cond_0
    invoke-virtual {p2}, Lu/aly/av;->t()V

    return-void

    .line 434
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 489
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_2

    .line 481
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_2

    .line 482
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/av;->e:J

    .line 483
    invoke-virtual {p2, v3}, Lu/aly/av;->e(Z)V

    goto/16 :goto_2

    .line 485
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_2

    .line 473
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 474
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/av;->d:I

    .line 475
    invoke-virtual {p2, v3}, Lu/aly/av;->d(Z)V

    goto :goto_2

    .line 477
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 465
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_4

    .line 466
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/av;->c:J

    .line 467
    invoke-virtual {p2, v3}, Lu/aly/av;->c(Z)V

    goto :goto_2

    .line 469
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 444
    :pswitch_3
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6

    .line 446
    invoke-virtual {p1}, Lu/aly/dg;->n()Lu/aly/dd;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lu/aly/dd;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/av;->b:Ljava/util/Map;

    const/4 v1, 0x0

    .line 448
    :goto_1
    iget v2, v0, Lu/aly/dd;->c:I

    if-ge v1, v2, :cond_5

    .line 452
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v2

    .line 453
    new-instance v4, Lu/aly/bh;

    invoke-direct {v4}, Lu/aly/bh;-><init>()V

    .line 454
    invoke-virtual {v4, p1}, Lu/aly/bh;->a(Lu/aly/dg;)V

    .line 455
    iget-object v5, p2, Lu/aly/av;->b:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 457
    :cond_5
    invoke-virtual {p1}, Lu/aly/dg;->o()V

    .line 459
    invoke-virtual {p2, v3}, Lu/aly/av;->b(Z)V

    goto :goto_2

    .line 461
    :cond_6
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 436
    :pswitch_4
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    .line 437
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    .line 438
    invoke-virtual {p2, v3}, Lu/aly/av;->a(Z)V

    goto :goto_2

    .line 440
    :cond_7
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 491
    :goto_2
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
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

    .line 423
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/av$a;->b(Lu/aly/dg;Lu/aly/av;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/av;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 503
    invoke-virtual {p2}, Lu/aly/av;->t()V

    .line 505
    invoke-static {}, Lu/aly/av;->u()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 506
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 507
    invoke-static {}, Lu/aly/av;->v()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 508
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 511
    :cond_0
    iget-object v0, p2, Lu/aly/av;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 512
    invoke-static {}, Lu/aly/av;->w()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 514
    new-instance v0, Lu/aly/dd;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/av;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/dd;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dd;)V

    .line 515
    iget-object v0, p2, Lu/aly/av;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 518
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bh;

    invoke-virtual {v1, p1}, Lu/aly/bh;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p1}, Lu/aly/dg;->e()V

    .line 522
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 524
    :cond_2
    invoke-virtual {p2}, Lu/aly/av;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    invoke-static {}, Lu/aly/av;->x()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 526
    iget-wide v0, p2, Lu/aly/av;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 527
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 529
    :cond_3
    invoke-virtual {p2}, Lu/aly/av;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    invoke-static {}, Lu/aly/av;->y()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 531
    iget v0, p2, Lu/aly/av;->d:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 532
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 534
    :cond_4
    invoke-static {}, Lu/aly/av;->z()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 535
    iget-wide v0, p2, Lu/aly/av;->e:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 536
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 537
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 538
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

    .line 423
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/av$a;->a(Lu/aly/dg;Lu/aly/av;)V

    return-void
.end method
