.class Lu/aly/bg$a;
.super Lu/aly/dq;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/bg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bg$1;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Lu/aly/bg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 276
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 277
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_1

    .line 302
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 305
    invoke-virtual {p2}, Lu/aly/bg;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 306
    new-instance p1, Lu/aly/dh;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_0
    invoke-virtual {p2}, Lu/aly/bg;->j()V

    return-void

    .line 280
    :cond_1
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 298
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 290
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 291
    invoke-virtual {p1}, Lu/aly/dg;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->b:J

    .line 292
    invoke-virtual {p2, v2}, Lu/aly/bg;->b(Z)V

    goto :goto_1

    .line 294
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 282
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xb

    if-ne v1, v3, :cond_3

    .line 283
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bg;->a:Ljava/lang/String;

    .line 284
    invoke-virtual {p2, v2}, Lu/aly/bg;->a(Z)V

    goto :goto_1

    .line 286
    :cond_3
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 300
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto :goto_0

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

    .line 269
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/bg$a;->b(Lu/aly/dg;Lu/aly/bg;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 312
    invoke-virtual {p2}, Lu/aly/bg;->j()V

    .line 314
    invoke-static {}, Lu/aly/bg;->k()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 315
    iget-object v0, p2, Lu/aly/bg;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lu/aly/bg;->l()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 317
    iget-object v0, p2, Lu/aly/bg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 320
    :cond_0
    invoke-static {}, Lu/aly/bg;->m()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 321
    iget-wide v0, p2, Lu/aly/bg;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dg;->a(J)V

    .line 322
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 323
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 324
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

    .line 269
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/bg$a;->a(Lu/aly/dg;Lu/aly/bg;)V

    return-void
.end method
