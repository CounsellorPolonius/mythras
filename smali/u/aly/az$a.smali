.class Lu/aly/az$a;
.super Lu/aly/dq;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/az;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/az$1;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Lu/aly/az$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/az;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 366
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 367
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 427
    invoke-virtual {p2}, Lu/aly/az;->p()V

    return-void

    .line 370
    :cond_0
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 420
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto/16 :goto_3

    .line 412
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 413
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->c:Ljava/lang/String;

    .line 414
    invoke-virtual {p2, v3}, Lu/aly/az;->c(Z)V

    goto/16 :goto_3

    .line 416
    :cond_1
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_3

    .line 393
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v4, 0xf

    if-ne v1, v4, :cond_3

    .line 395
    invoke-virtual {p1}, Lu/aly/dg;->p()Lu/aly/dc;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/util/ArrayList;

    iget v4, v0, Lu/aly/dc;->b:I

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p2, Lu/aly/az;->b:Ljava/util/List;

    .line 397
    :goto_1
    iget v1, v0, Lu/aly/dc;->b:I

    if-ge v2, v1, :cond_2

    .line 400
    new-instance v1, Lu/aly/ax;

    invoke-direct {v1}, Lu/aly/ax;-><init>()V

    .line 401
    invoke-virtual {v1, p1}, Lu/aly/ax;->a(Lu/aly/dg;)V

    .line 402
    iget-object v4, p2, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    :cond_2
    invoke-virtual {p1}, Lu/aly/dg;->q()V

    .line 406
    invoke-virtual {p2, v3}, Lu/aly/az;->b(Z)V

    goto :goto_3

    .line 408
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_3

    .line 372
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v4, 0xd

    if-ne v1, v4, :cond_5

    .line 374
    invoke-virtual {p1}, Lu/aly/dg;->n()Lu/aly/dd;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/util/HashMap;

    iget v4, v0, Lu/aly/dd;->c:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/az;->a:Ljava/util/Map;

    .line 376
    :goto_2
    iget v1, v0, Lu/aly/dd;->c:I

    if-ge v2, v1, :cond_4

    .line 380
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v1

    .line 381
    new-instance v4, Lu/aly/ay;

    invoke-direct {v4}, Lu/aly/ay;-><init>()V

    .line 382
    invoke-virtual {v4, p1}, Lu/aly/ay;->a(Lu/aly/dg;)V

    .line 383
    iget-object v5, p2, Lu/aly/az;->a:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 385
    :cond_4
    invoke-virtual {p1}, Lu/aly/dg;->o()V

    .line 387
    invoke-virtual {p2, v3}, Lu/aly/az;->a(Z)V

    goto :goto_3

    .line 389
    :cond_5
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 422
    :goto_3
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 359
    check-cast p2, Lu/aly/az;

    invoke-virtual {p0, p1, p2}, Lu/aly/az$a;->b(Lu/aly/dg;Lu/aly/az;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/az;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 431
    invoke-virtual {p2}, Lu/aly/az;->p()V

    .line 433
    invoke-static {}, Lu/aly/az;->q()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 434
    iget-object v0, p2, Lu/aly/az;->a:Ljava/util/Map;

    const/16 v1, 0xc

    if-eqz v0, :cond_1

    .line 435
    invoke-static {}, Lu/aly/az;->r()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 437
    new-instance v0, Lu/aly/dd;

    const/16 v2, 0xb

    iget-object v3, p2, Lu/aly/az;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lu/aly/dd;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dd;)V

    .line 438
    iget-object v0, p2, Lu/aly/az;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 440
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 441
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/ay;

    invoke-virtual {v2, p1}, Lu/aly/ay;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p1}, Lu/aly/dg;->e()V

    .line 445
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 447
    :cond_1
    iget-object v0, p2, Lu/aly/az;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 448
    invoke-virtual {p2}, Lu/aly/az;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    invoke-static {}, Lu/aly/az;->s()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 451
    new-instance v0, Lu/aly/dc;

    iget-object v2, p2, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/dc;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dc;)V

    .line 452
    iget-object v0, p2, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ax;

    .line 454
    invoke-virtual {v1, p1}, Lu/aly/ax;->b(Lu/aly/dg;)V

    goto :goto_1

    .line 456
    :cond_2
    invoke-virtual {p1}, Lu/aly/dg;->f()V

    .line 458
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 461
    :cond_3
    iget-object v0, p2, Lu/aly/az;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 462
    invoke-virtual {p2}, Lu/aly/az;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 463
    invoke-static {}, Lu/aly/az;->t()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 464
    iget-object p2, p2, Lu/aly/az;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 468
    :cond_4
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 469
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

    .line 359
    check-cast p2, Lu/aly/az;

    invoke-virtual {p0, p1, p2}, Lu/aly/az$a;->a(Lu/aly/dg;Lu/aly/az;)V

    return-void
.end method
