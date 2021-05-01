.class Lu/aly/ba$a;
.super Lu/aly/dq;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ba$1;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lu/aly/ba$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/ba;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 349
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 350
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_1

    .line 396
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 399
    invoke-virtual {p2}, Lu/aly/ba;->j()Z

    move-result p1

    if-nez p1, :cond_0

    .line 400
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :cond_0
    invoke-virtual {p2}, Lu/aly/ba;->n()V

    return-void

    .line 353
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 392
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 384
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    .line 385
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ba;->c:Ljava/lang/String;

    .line 386
    invoke-virtual {p2, v2}, Lu/aly/ba;->c(Z)V

    goto :goto_2

    .line 388
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 376
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 377
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->b:I

    .line 378
    invoke-virtual {p2, v2}, Lu/aly/ba;->b(Z)V

    goto :goto_2

    .line 380
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_2

    .line 355
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    .line 357
    invoke-virtual {p1}, Lu/aly/dg;->n()Lu/aly/dd;

    move-result-object v0

    .line 358
    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lu/aly/dd;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/ba;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 359
    :goto_1
    iget v3, v0, Lu/aly/dd;->c:I

    if-ge v1, v3, :cond_4

    .line 363
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v3

    .line 364
    new-instance v4, Lu/aly/bb;

    invoke-direct {v4}, Lu/aly/bb;-><init>()V

    .line 365
    invoke-virtual {v4, p1}, Lu/aly/bb;->a(Lu/aly/dg;)V

    .line 366
    iget-object v5, p2, Lu/aly/ba;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 368
    :cond_4
    invoke-virtual {p1}, Lu/aly/dg;->o()V

    .line 370
    invoke-virtual {p2, v2}, Lu/aly/ba;->a(Z)V

    goto :goto_2

    .line 372
    :cond_5
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 394
    :goto_2
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto/16 :goto_0

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

    .line 342
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/ba$a;->b(Lu/aly/dg;Lu/aly/ba;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/ba;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 406
    invoke-virtual {p2}, Lu/aly/ba;->n()V

    .line 408
    invoke-static {}, Lu/aly/ba;->o()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 409
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 410
    invoke-static {}, Lu/aly/ba;->p()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 412
    new-instance v0, Lu/aly/dd;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/ba;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/dd;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dd;)V

    .line 413
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 415
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 416
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bb;

    invoke-virtual {v1, p1}, Lu/aly/bb;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p1}, Lu/aly/dg;->e()V

    .line 420
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 422
    :cond_1
    invoke-static {}, Lu/aly/ba;->q()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 423
    iget v0, p2, Lu/aly/ba;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 424
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 425
    iget-object v0, p2, Lu/aly/ba;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 426
    invoke-static {}, Lu/aly/ba;->r()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 427
    iget-object p2, p2, Lu/aly/ba;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 430
    :cond_2
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 431
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

    .line 342
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/ba$a;->a(Lu/aly/dg;Lu/aly/ba;)V

    return-void
.end method
