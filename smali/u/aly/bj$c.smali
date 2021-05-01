.class Lu/aly/bj$c;
.super Lu/aly/dr;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/bj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bj$1;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Lu/aly/bj$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 403
    check-cast p1, Lu/aly/dm;

    .line 404
    iget v0, p2, Lu/aly/bj;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 405
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 406
    invoke-virtual {p2}, Lu/aly/bj;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 407
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 409
    :cond_0
    invoke-virtual {p2}, Lu/aly/bj;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 410
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    const/4 v1, 0x2

    .line 412
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 413
    invoke-virtual {p2}, Lu/aly/bj;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p2, Lu/aly/bj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 416
    :cond_2
    invoke-virtual {p2}, Lu/aly/bj;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object p2, p2, Lu/aly/bj;->c:Lu/aly/ba;

    invoke-virtual {p2, p1}, Lu/aly/ba;->b(Lu/aly/dg;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 399
    check-cast p2, Lu/aly/bj;

    invoke-virtual {p0, p1, p2}, Lu/aly/bj$c;->a(Lu/aly/dg;Lu/aly/bj;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 423
    check-cast p1, Lu/aly/dm;

    .line 424
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bj;->a:I

    const/4 v0, 0x1

    .line 425
    invoke-virtual {p2, v0}, Lu/aly/bj;->a(Z)V

    const/4 v1, 0x2

    .line 426
    invoke-virtual {p1, v1}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 427
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lu/aly/bj;->b:Ljava/lang/String;

    .line 429
    invoke-virtual {p2, v0}, Lu/aly/bj;->b(Z)V

    .line 431
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    new-instance v1, Lu/aly/ba;

    invoke-direct {v1}, Lu/aly/ba;-><init>()V

    iput-object v1, p2, Lu/aly/bj;->c:Lu/aly/ba;

    .line 433
    iget-object v1, p2, Lu/aly/bj;->c:Lu/aly/ba;

    invoke-virtual {v1, p1}, Lu/aly/ba;->a(Lu/aly/dg;)V

    .line 434
    invoke-virtual {p2, v0}, Lu/aly/bj;->c(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 399
    check-cast p2, Lu/aly/bj;

    invoke-virtual {p0, p1, p2}, Lu/aly/bj$c;->b(Lu/aly/dg;Lu/aly/bj;)V

    return-void
.end method
