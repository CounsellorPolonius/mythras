.class Lu/aly/bd$a;
.super Lu/aly/dq;
.source "Latent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bd$1;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lu/aly/bd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 269
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 270
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_2

    .line 295
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 298
    invoke-virtual {p2}, Lu/aly/bd;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 299
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'latency\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_0
    invoke-virtual {p2}, Lu/aly/bd;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 302
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'interval\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :cond_1
    invoke-virtual {p2}, Lu/aly/bd;->j()V

    return-void

    .line 273
    :cond_2
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 291
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 283
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 284
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bd;->b:J

    .line 285
    invoke-virtual {p2, v2}, Lu/aly/bd;->b(Z)V

    goto :goto_1

    .line 287
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 275
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    .line 276
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bd;->a:I

    .line 277
    invoke-virtual {p2, v2}, Lu/aly/bd;->a(Z)V

    goto :goto_1

    .line 279
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 293
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 262
    check-cast p2, Lu/aly/bd;

    invoke-virtual {p0, p1, p2}, Lu/aly/bd$a;->b(Lu/aly/dg;Lu/aly/bd;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 308
    invoke-virtual {p2}, Lu/aly/bd;->j()V

    .line 310
    invoke-static {}, Lu/aly/bd;->k()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 311
    invoke-static {}, Lu/aly/bd;->l()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 312
    iget v0, p2, Lu/aly/bd;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 313
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 314
    invoke-static {}, Lu/aly/bd;->m()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 315
    iget-wide v0, p2, Lu/aly/bd;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 316
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 317
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 318
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

    .line 262
    check-cast p2, Lu/aly/bd;

    invoke-virtual {p0, p1, p2}, Lu/aly/bd$a;->a(Lu/aly/dg;Lu/aly/bd;)V

    return-void
.end method
