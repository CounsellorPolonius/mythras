.class Lu/aly/at$a;
.super Lu/aly/dq;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/at$1;)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lu/aly/at$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/at;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 338
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 339
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_1

    .line 372
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 375
    invoke-virtual {p2}, Lu/aly/at;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 376
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

    .line 378
    :cond_0
    invoke-virtual {p2}, Lu/aly/at;->m()V

    return-void

    .line 342
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 368
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 360
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 361
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    invoke-static {v0}, Lu/aly/au;->a(I)Lu/aly/au;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->c:Lu/aly/au;

    .line 362
    invoke-virtual {p2, v2}, Lu/aly/at;->d(Z)V

    goto :goto_1

    .line 364
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 352
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    .line 353
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    .line 354
    invoke-virtual {p2, v2}, Lu/aly/at;->c(Z)V

    goto :goto_1

    .line 356
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 344
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    .line 345
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/at;->a:J

    .line 346
    invoke-virtual {p2, v2}, Lu/aly/at;->b(Z)V

    goto :goto_1

    .line 348
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 370
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

    .line 331
    check-cast p2, Lu/aly/at;

    invoke-virtual {p0, p1, p2}, Lu/aly/at$a;->b(Lu/aly/dg;Lu/aly/at;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/at;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 382
    invoke-virtual {p2}, Lu/aly/at;->m()V

    .line 384
    invoke-static {}, Lu/aly/at;->n()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 385
    invoke-static {}, Lu/aly/at;->o()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 386
    iget-wide v0, p2, Lu/aly/at;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 387
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 388
    iget-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lu/aly/at;->p()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 390
    iget-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 393
    :cond_0
    iget-object v0, p2, Lu/aly/at;->c:Lu/aly/au;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p2}, Lu/aly/at;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-static {}, Lu/aly/at;->q()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 396
    iget-object p2, p2, Lu/aly/at;->c:Lu/aly/au;

    invoke-virtual {p2}, Lu/aly/au;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(I)V

    .line 397
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 400
    :cond_1
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 401
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

    .line 331
    check-cast p2, Lu/aly/at;

    invoke-virtual {p0, p1, p2}, Lu/aly/at$a;->a(Lu/aly/dg;Lu/aly/at;)V

    return-void
.end method
