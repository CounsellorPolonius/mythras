.class Lu/aly/at$c;
.super Lu/aly/dr;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/at$1;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lu/aly/at$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/at;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 416
    check-cast p1, Lu/aly/dm;

    .line 417
    iget-wide v0, p2, Lu/aly/at;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 418
    iget-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 420
    invoke-virtual {p2}, Lu/aly/at;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 421
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    .line 423
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 424
    invoke-virtual {p2}, Lu/aly/at;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object p2, p2, Lu/aly/at;->c:Lu/aly/au;

    invoke-virtual {p2}, Lu/aly/au;->a()I

    move-result p2

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

    .line 412
    check-cast p2, Lu/aly/at;

    invoke-virtual {p0, p1, p2}, Lu/aly/at$c;->a(Lu/aly/dg;Lu/aly/at;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/at;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 431
    check-cast p1, Lu/aly/dm;

    .line 432
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/at;->a:J

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p2, v0}, Lu/aly/at;->b(Z)V

    .line 434
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/at;->b:Ljava/lang/String;

    .line 435
    invoke-virtual {p2, v0}, Lu/aly/at;->c(Z)V

    .line 436
    invoke-virtual {p1, v0}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 437
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result p1

    invoke-static {p1}, Lu/aly/au;->a(I)Lu/aly/au;

    move-result-object p1

    iput-object p1, p2, Lu/aly/at;->c:Lu/aly/au;

    .line 439
    invoke-virtual {p2, v0}, Lu/aly/at;->d(Z)V

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

    .line 412
    check-cast p2, Lu/aly/at;

    invoke-virtual {p0, p1, p2}, Lu/aly/at$c;->b(Lu/aly/dg;Lu/aly/at;)V

    return-void
.end method
