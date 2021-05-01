.class Lu/aly/ap$c;
.super Lu/aly/dr;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/ap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ap$1;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Lu/aly/ap$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/ap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 392
    check-cast p1, Lu/aly/dm;

    .line 393
    iget v0, p2, Lu/aly/ap;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 394
    iget v0, p2, Lu/aly/ap;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 395
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 396
    invoke-virtual {p2}, Lu/aly/ap;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 397
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    .line 399
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 400
    invoke-virtual {p2}, Lu/aly/ap;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget p2, p2, Lu/aly/ap;->c:I

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 388
    check-cast p2, Lu/aly/ap;

    invoke-virtual {p0, p1, p2}, Lu/aly/ap$c;->a(Lu/aly/dg;Lu/aly/ap;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/ap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 407
    check-cast p1, Lu/aly/dm;

    .line 408
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ap;->a:I

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p2, v0}, Lu/aly/ap;->a(Z)V

    .line 410
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v1

    iput v1, p2, Lu/aly/ap;->b:I

    .line 411
    invoke-virtual {p2, v0}, Lu/aly/ap;->b(Z)V

    .line 412
    invoke-virtual {p1, v0}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 413
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result p1

    iput p1, p2, Lu/aly/ap;->c:I

    .line 415
    invoke-virtual {p2, v0}, Lu/aly/ap;->c(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 388
    check-cast p2, Lu/aly/ap;

    invoke-virtual {p0, p1, p2}, Lu/aly/ap$c;->b(Lu/aly/dg;Lu/aly/ap;)V

    return-void
.end method
