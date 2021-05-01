.class Lu/aly/aq$a;
.super Lu/aly/dq;
.source "ControlPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/aq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aq$1;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lu/aly/aq$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/aq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 225
    :goto_0
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 226
    iget-byte v1, v0, Lu/aly/db;->b:B

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    .line 247
    invoke-virtual {p2}, Lu/aly/aq;->f()V

    return-void

    .line 229
    :cond_0
    iget-short v1, v0, Lu/aly/db;->c:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 240
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    goto :goto_1

    .line 231
    :cond_1
    iget-byte v1, v0, Lu/aly/db;->b:B

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 232
    new-instance v0, Lu/aly/bd;

    invoke-direct {v0}, Lu/aly/bd;-><init>()V

    iput-object v0, p2, Lu/aly/aq;->a:Lu/aly/bd;

    .line 233
    iget-object v0, p2, Lu/aly/aq;->a:Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->a(Lu/aly/dg;)V

    .line 234
    invoke-virtual {p2, v2}, Lu/aly/aq;->a(Z)V

    goto :goto_1

    .line 236
    :cond_2
    iget-byte v0, v0, Lu/aly/db;->b:B

    invoke-static {p1, v0}, Lu/aly/dj;->a(Lu/aly/dg;B)V

    .line 242
    :goto_1
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    goto :goto_0
.end method

.method public synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 218
    check-cast p2, Lu/aly/aq;

    invoke-virtual {p0, p1, p2}, Lu/aly/aq$a;->b(Lu/aly/dg;Lu/aly/aq;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/aq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 251
    invoke-virtual {p2}, Lu/aly/aq;->f()V

    .line 253
    invoke-static {}, Lu/aly/aq;->h()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 254
    iget-object v0, p2, Lu/aly/aq;->a:Lu/aly/bd;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p2}, Lu/aly/aq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lu/aly/aq;->i()Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 257
    iget-object p2, p2, Lu/aly/aq;->a:Lu/aly/bd;

    invoke-virtual {p2, p1}, Lu/aly/bd;->b(Lu/aly/dg;)V

    .line 258
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 261
    :cond_0
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 262
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

    .line 218
    check-cast p2, Lu/aly/aq;

    invoke-virtual {p0, p1, p2}, Lu/aly/aq$a;->a(Lu/aly/dg;Lu/aly/aq;)V

    return-void
.end method
