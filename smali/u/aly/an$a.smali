.class Lu/aly/an$a;
.super Lu/aly/dq;
.source "ActiveUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/an;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/an$1;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lu/aly/an$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/an;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 277
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 278
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 306
    invoke-virtual {p2}, Lu/aly/an;->j()V

    return-void

    .line 281
    :cond_0
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    const/16 v3, 0xb

    packed-switch v1, :pswitch_data_0

    .line 299
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 291
    :pswitch_0
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_1

    .line 292
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/an;->b:Ljava/lang/String;

    .line 293
    invoke-virtual {p2, v2}, Lu/aly/an;->b(Z)V

    goto :goto_1

    .line 295
    :cond_1
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 283
    :pswitch_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-ne v1, v3, :cond_2

    .line 284
    invoke-virtual {p1}, Lu/aly/dg;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/an;->a:Ljava/lang/String;

    .line 285
    invoke-virtual {p2, v2}, Lu/aly/an;->a(Z)V

    goto :goto_1

    .line 287
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 301
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto :goto_0

    nop

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

    .line 270
    check-cast p2, Lu/aly/an;

    invoke-virtual {p0, p1, p2}, Lu/aly/an$a;->b(Lu/aly/dg;Lu/aly/an;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/an;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 310
    invoke-virtual {p2}, Lu/aly/an;->j()V

    .line 312
    invoke-static {}, Lu/aly/an;->k()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 313
    iget-object v0, p2, Lu/aly/an;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lu/aly/an;->l()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 315
    iget-object v0, p2, Lu/aly/an;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 318
    :cond_0
    iget-object v0, p2, Lu/aly/an;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 319
    invoke-static {}, Lu/aly/an;->m()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 320
    iget-object p2, p2, Lu/aly/an;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dg;->a(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 323
    :cond_1
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

    .line 270
    check-cast p2, Lu/aly/an;

    invoke-virtual {p0, p1, p2}, Lu/aly/an$a;->a(Lu/aly/dg;Lu/aly/an;)V

    return-void
.end method
