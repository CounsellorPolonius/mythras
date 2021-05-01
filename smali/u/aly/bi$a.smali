.class Lu/aly/bi$a;
.super Lu/aly/dq;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bi;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bi$1;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Lu/aly/bi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bi;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 270
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 271
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_2

    .line 296
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 299
    invoke-virtual {p2}, Lu/aly/bi;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 300
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'height\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_0
    invoke-virtual {p2}, Lu/aly/bi;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 303
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'width\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_1
    invoke-virtual {p2}, Lu/aly/bi;->j()V

    return-void

    .line 274
    :cond_2
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    const/16 v3, 0x8

    packed-switch v1, :pswitch_data_0

    .line 292
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 284
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_3

    .line 285
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bi;->b:I

    .line 286
    invoke-virtual {p2, v2}, Lu/aly/bi;->b(Z)V

    goto :goto_1

    .line 288
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 276
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_4

    .line 277
    invoke-virtual {p1}, Lu/aly/dg;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bi;->a:I

    .line 278
    invoke-virtual {p2, v2}, Lu/aly/bi;->a(Z)V

    goto :goto_1

    .line 280
    :cond_4
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 294
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

    .line 263
    check-cast p2, Lu/aly/bi;

    invoke-virtual {p0, p1, p2}, Lu/aly/bi$a;->b(Lu/aly/dg;Lu/aly/bi;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 309
    invoke-virtual {p2}, Lu/aly/bi;->j()V

    .line 311
    invoke-static {}, Lu/aly/bi;->k()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 312
    invoke-static {}, Lu/aly/bi;->l()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 313
    iget v0, p2, Lu/aly/bi;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(I)V

    .line 314
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 315
    invoke-static {}, Lu/aly/bi;->m()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 316
    iget p2, p2, Lu/aly/bi;->b:I

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(I)V

    .line 317
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 318
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 319
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

    .line 263
    check-cast p2, Lu/aly/bi;

    invoke-virtual {p0, p1, p2}, Lu/aly/bi$a;->a(Lu/aly/dg;Lu/aly/bi;)V

    return-void
.end method
