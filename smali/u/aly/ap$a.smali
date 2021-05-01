.class Lu/aly/ap$a;
.super Lu/aly/dq;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/ap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ap$1;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lu/aly/ap$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/ap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 315
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 316
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_2

    .line 349
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 352
    invoke-virtual {p2}, Lu/aly/ap;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 353
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'successful_requests\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_0
    invoke-virtual {p2}, Lu/aly/ap;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 356
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'failed_requests\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_1
    invoke-virtual {p2}, Lu/aly/ap;->m()V

    return-void

    .line 319
    :cond_2
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    const/16 v3, 0x8

    packed-switch v1, :pswitch_data_0

    .line 345
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 337
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_3

    .line 338
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ap;->c:I

    .line 339
    invoke-virtual {p2, v2}, Lu/aly/ap;->c(Z)V

    goto :goto_1

    .line 341
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 329
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_4

    .line 330
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ap;->b:I

    .line 331
    invoke-virtual {p2, v2}, Lu/aly/ap;->b(Z)V

    goto :goto_1

    .line 333
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 321
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_5

    .line 322
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ap;->a:I

    .line 323
    invoke-virtual {p2, v2}, Lu/aly/ap;->a(Z)V

    goto :goto_1

    .line 325
    :cond_5
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 347
    :goto_1
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

    .line 308
    check-cast p2, Lu/aly/ap;

    invoke-virtual {p0, p1, p2}, Lu/aly/ap$a;->b(Lu/aly/dg;Lu/aly/ap;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/ap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 362
    invoke-virtual {p2}, Lu/aly/ap;->m()V

    .line 364
    invoke-static {}, Lu/aly/ap;->n()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 365
    invoke-static {}, Lu/aly/ap;->o()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 366
    iget v0, p2, Lu/aly/ap;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 367
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 368
    invoke-static {}, Lu/aly/ap;->p()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 369
    iget v0, p2, Lu/aly/ap;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 370
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 371
    invoke-virtual {p2}, Lu/aly/ap;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lu/aly/ap;->q()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 373
    iget p2, p2, Lu/aly/ap;->c:I

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(I)V

    .line 374
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 376
    :cond_0
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 377
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

    .line 308
    check-cast p2, Lu/aly/ap;

    invoke-virtual {p0, p1, p2}, Lu/aly/ap$a;->a(Lu/aly/dg;Lu/aly/ap;)V

    return-void
.end method
