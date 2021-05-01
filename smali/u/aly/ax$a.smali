.class Lu/aly/ax$a;
.super Lu/aly/dq;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/ax;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ax$1;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Lu/aly/ax$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/ax;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 367
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 370
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 371
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_1

    .line 412
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 415
    invoke-virtual {p2}, Lu/aly/ax;->o()Z

    move-result p1

    if-nez p1, :cond_0

    .line 416
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

    .line 418
    :cond_0
    invoke-virtual {p2}, Lu/aly/ax;->p()V

    return-void

    .line 374
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 408
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 400
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 401
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ax;->d:J

    .line 402
    invoke-virtual {p2, v3}, Lu/aly/ax;->d(Z)V

    goto :goto_1

    .line 404
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 392
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_3

    .line 393
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ax;->c:Ljava/lang/String;

    .line 394
    invoke-virtual {p2, v3}, Lu/aly/ax;->c(Z)V

    goto :goto_1

    .line 396
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 384
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_4

    .line 385
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ax;->b:Ljava/lang/String;

    .line 386
    invoke-virtual {p2, v3}, Lu/aly/ax;->b(Z)V

    goto :goto_1

    .line 388
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 376
    :pswitch_3
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_5

    .line 377
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    .line 378
    invoke-virtual {p2, v3}, Lu/aly/ax;->a(Z)V

    goto :goto_1

    .line 380
    :cond_5
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 410
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto/16 :goto_0

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

    .line 363
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/ax$a;->b(Lu/aly/dg;Lu/aly/ax;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 422
    invoke-virtual {p2}, Lu/aly/ax;->p()V

    .line 424
    invoke-static {}, Lu/aly/ax;->q()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 425
    iget-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lu/aly/ax;->r()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 427
    iget-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 430
    :cond_0
    iget-object v0, p2, Lu/aly/ax;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p2}, Lu/aly/ax;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-static {}, Lu/aly/ax;->s()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 433
    iget-object v0, p2, Lu/aly/ax;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 437
    :cond_1
    iget-object v0, p2, Lu/aly/ax;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 438
    invoke-static {}, Lu/aly/ax;->t()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 439
    iget-object v0, p2, Lu/aly/ax;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 442
    :cond_2
    invoke-static {}, Lu/aly/ax;->u()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 443
    iget-wide v0, p2, Lu/aly/ax;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 444
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 445
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 446
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

    .line 363
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/ax$a;->a(Lu/aly/dg;Lu/aly/ax;)V

    return-void
.end method
