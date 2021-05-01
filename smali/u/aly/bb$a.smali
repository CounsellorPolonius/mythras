.class Lu/aly/bb$a;
.super Lu/aly/dq;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bb;",
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

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lu/aly/bb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bb;)V
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

    .line 356
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 359
    invoke-virtual {p2}, Lu/aly/bb;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 360
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

    .line 362
    :cond_0
    invoke-virtual {p2}, Lu/aly/bb;->m()V

    return-void

    .line 326
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 352
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 344
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_2

    .line 345
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    .line 346
    invoke-virtual {p2, v3}, Lu/aly/bb;->c(Z)V

    goto :goto_1

    .line 348
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 336
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 337
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bb;->b:J

    .line 338
    invoke-virtual {p2, v3}, Lu/aly/bb;->b(Z)V

    goto :goto_1

    .line 340
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 328
    :pswitch_2
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v2, :cond_4

    .line 329
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    .line 330
    invoke-virtual {p2, v3}, Lu/aly/bb;->a(Z)V

    goto :goto_1

    .line 332
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 354
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto :goto_0

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
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$a;->b(Lu/aly/dg;Lu/aly/bb;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 366
    invoke-virtual {p2}, Lu/aly/bb;->m()V

    .line 368
    invoke-static {}, Lu/aly/bb;->n()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 369
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p2}, Lu/aly/bb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lu/aly/bb;->o()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 372
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 376
    :cond_0
    invoke-static {}, Lu/aly/bb;->p()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 377
    iget-wide v0, p2, Lu/aly/bb;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 378
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 379
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 380
    invoke-static {}, Lu/aly/bb;->q()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 381
    iget-object p2, p2, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 384
    :cond_1
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 385
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
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$a;->a(Lu/aly/dg;Lu/aly/bb;)V

    return-void
.end method
