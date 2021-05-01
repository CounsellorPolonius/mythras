.class Lu/aly/be$a;
.super Lu/aly/dq;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lu/aly/be$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/be;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 312
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 313
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_3

    .line 346
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 349
    invoke-virtual {p2}, Lu/aly/be;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 350
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'lat\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_0
    invoke-virtual {p2}, Lu/aly/be;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 353
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'lng\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_1
    invoke-virtual {p2}, Lu/aly/be;->l()Z

    move-result p1

    if-nez p1, :cond_2

    .line 356
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

    .line 358
    :cond_2
    invoke-virtual {p2}, Lu/aly/be;->m()V

    return-void

    .line 316
    :cond_3
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x4

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 342
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 334
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 335
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/be;->c:J

    .line 336
    invoke-virtual {p2, v3}, Lu/aly/be;->c(Z)V

    goto :goto_1

    .line 338
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 326
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_5

    .line 327
    invoke-virtual {p1}, Lu/aly/dg;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/be;->b:D

    .line 328
    invoke-virtual {p2, v3}, Lu/aly/be;->b(Z)V

    goto :goto_1

    .line 330
    :cond_5
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 318
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_6

    .line 319
    invoke-virtual {p1}, Lu/aly/dg;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/be;->a:D

    .line 320
    invoke-virtual {p2, v3}, Lu/aly/be;->a(Z)V

    goto :goto_1

    .line 322
    :cond_6
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 344
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

    .line 305
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->b(Lu/aly/dg;Lu/aly/be;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/be;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 362
    invoke-virtual {p2}, Lu/aly/be;->m()V

    .line 364
    invoke-static {}, Lu/aly/be;->n()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 365
    invoke-static {}, Lu/aly/be;->o()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 366
    iget-wide v0, p2, Lu/aly/be;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(D)V

    .line 367
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 368
    invoke-static {}, Lu/aly/be;->p()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 369
    iget-wide v0, p2, Lu/aly/be;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(D)V

    .line 370
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 371
    invoke-static {}, Lu/aly/be;->q()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 372
    iget-wide v0, p2, Lu/aly/be;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 373
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 374
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 375
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

    .line 305
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->a(Lu/aly/dg;Lu/aly/be;)V

    return-void
.end method
