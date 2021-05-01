.class Lu/aly/as$a;
.super Lu/aly/dq;
.source "Ekv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/as;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/as$1;)V
    .locals 0

    .line 425
    invoke-direct {p0}, Lu/aly/as$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/as;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 432
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 433
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_1

    .line 494
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 497
    invoke-virtual {p2}, Lu/aly/as;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 498
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

    .line 500
    :cond_0
    invoke-virtual {p2}, Lu/aly/as;->t()V

    return-void

    .line 436
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 490
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_2

    .line 482
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 483
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/as;->e:I

    .line 484
    invoke-virtual {p2, v3}, Lu/aly/as;->e(Z)V

    goto/16 :goto_2

    .line 486
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_2

    .line 474
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_3

    .line 475
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/as;->d:J

    .line 476
    invoke-virtual {p2, v3}, Lu/aly/as;->d(Z)V

    goto :goto_2

    .line 478
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 454
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    .line 456
    invoke-virtual {p1}, Lu/aly/dg;->n()Lu/aly/dd;

    move-result-object v0

    .line 457
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lu/aly/dd;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/as;->c:Ljava/util/Map;

    const/4 v1, 0x0

    .line 458
    :goto_1
    iget v2, v0, Lu/aly/dd;->c:I

    if-ge v1, v2, :cond_4

    .line 462
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v4

    .line 464
    iget-object v5, p2, Lu/aly/as;->c:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    :cond_4
    invoke-virtual {p1}, Lu/aly/dg;->o()V

    .line 468
    invoke-virtual {p2, v3}, Lu/aly/as;->c(Z)V

    goto :goto_2

    .line 470
    :cond_5
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 446
    :pswitch_3
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    .line 447
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/as;->b:Ljava/lang/String;

    .line 448
    invoke-virtual {p2, v3}, Lu/aly/as;->b(Z)V

    goto :goto_2

    .line 450
    :cond_6
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 438
    :pswitch_4
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_7

    .line 439
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/as;->a:J

    .line 440
    invoke-virtual {p2, v3}, Lu/aly/as;->a(Z)V

    goto :goto_2

    .line 442
    :cond_7
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 492
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

    .line 425
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/as$a;->b(Lu/aly/dg;Lu/aly/as;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/as;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 504
    invoke-virtual {p2}, Lu/aly/as;->t()V

    .line 506
    invoke-static {}, Lu/aly/as;->u()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 507
    invoke-static {}, Lu/aly/as;->v()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 508
    iget-wide v0, p2, Lu/aly/as;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 509
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 510
    iget-object v0, p2, Lu/aly/as;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lu/aly/as;->w()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 512
    iget-object v0, p2, Lu/aly/as;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 515
    :cond_0
    iget-object v0, p2, Lu/aly/as;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 516
    invoke-static {}, Lu/aly/as;->x()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 518
    new-instance v0, Lu/aly/dd;

    iget-object v1, p2, Lu/aly/as;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v2, v1}, Lu/aly/dd;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dd;)V

    .line 519
    iget-object v0, p2, Lu/aly/as;->c:Ljava/util/Map;

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

    .line 521
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 522
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p1}, Lu/aly/dg;->e()V

    .line 526
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 528
    :cond_2
    invoke-virtual {p2}, Lu/aly/as;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    invoke-static {}, Lu/aly/as;->y()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 530
    iget-wide v0, p2, Lu/aly/as;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 531
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 533
    :cond_3
    invoke-virtual {p2}, Lu/aly/as;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    invoke-static {}, Lu/aly/as;->z()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 535
    iget p2, p2, Lu/aly/as;->e:I

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(I)V

    .line 536
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 538
    :cond_4
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 539
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

    .line 425
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/as$a;->a(Lu/aly/dg;Lu/aly/as;)V

    return-void
.end method
