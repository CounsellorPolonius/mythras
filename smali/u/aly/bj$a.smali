.class Lu/aly/bj$a;
.super Lu/aly/dq;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bj$1;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lu/aly/bj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 319
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 322
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 323
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_1

    .line 357
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 360
    invoke-virtual {p2}, Lu/aly/bj;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 361
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_0
    invoke-virtual {p2}, Lu/aly/bj;->m()V

    return-void

    .line 326
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 353
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 344
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 345
    new-instance v0, Lu/aly/ba;

    invoke-direct {v0}, Lu/aly/ba;-><init>()V

    iput-object v0, p2, Lu/aly/bj;->c:Lu/aly/ba;

    .line 346
    iget-object v0, p2, Lu/aly/bj;->c:Lu/aly/ba;

    invoke-virtual {v0, p1}, Lu/aly/ba;->a(Lu/aly/dg;)V

    .line 347
    invoke-virtual {p2, v2}, Lu/aly/bj;->c(Z)V

    goto :goto_1

    .line 349
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 336
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    .line 337
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bj;->b:Ljava/lang/String;

    .line 338
    invoke-virtual {p2, v2}, Lu/aly/bj;->b(Z)V

    goto :goto_1

    .line 340
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 328
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    .line 329
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bj;->a:I

    .line 330
    invoke-virtual {p2, v2}, Lu/aly/bj;->a(Z)V

    goto :goto_1

    .line 332
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 355
    :goto_1
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

    .line 315
    check-cast p2, Lu/aly/bj;

    invoke-virtual {p0, p1, p2}, Lu/aly/bj$a;->b(Lu/aly/dg;Lu/aly/bj;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 367
    invoke-virtual {p2}, Lu/aly/bj;->m()V

    .line 369
    invoke-static {}, Lu/aly/bj;->n()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 370
    invoke-static {}, Lu/aly/bj;->o()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 371
    iget v0, p2, Lu/aly/bj;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 372
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 373
    iget-object v0, p2, Lu/aly/bj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p2}, Lu/aly/bj;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lu/aly/bj;->p()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 376
    iget-object v0, p2, Lu/aly/bj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 380
    :cond_0
    iget-object v0, p2, Lu/aly/bj;->c:Lu/aly/ba;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p2}, Lu/aly/bj;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-static {}, Lu/aly/bj;->q()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 383
    iget-object p2, p2, Lu/aly/bj;->c:Lu/aly/ba;

    invoke-virtual {p2, p1}, Lu/aly/ba;->b(Lu/aly/dg;)V

    .line 384
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 387
    :cond_1
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 388
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

    .line 315
    check-cast p2, Lu/aly/bj;

    invoke-virtual {p0, p1, p2}, Lu/aly/bj$a;->a(Lu/aly/dg;Lu/aly/bj;)V

    return-void
.end method
