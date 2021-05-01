.class Lu/aly/bb$c;
.super Lu/aly/dr;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 396
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0

    .line 396
    invoke-direct {p0}, Lu/aly/bb$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 400
    check-cast p1, Lu/aly/dm;

    .line 401
    iget-wide v0, p2, Lu/aly/bb;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 402
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 404
    invoke-virtual {p2}, Lu/aly/bb;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    .line 407
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 408
    invoke-virtual {p2}, Lu/aly/bb;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object p2, p2, Lu/aly/bb;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(Ljava/lang/String;)V

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

    .line 396
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->a(Lu/aly/dg;Lu/aly/bb;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 415
    check-cast p1, Lu/aly/dm;

    .line 416
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bb;->b:J

    const/4 v0, 0x1

    .line 417
    invoke-virtual {p2, v0}, Lu/aly/bb;->b(Z)V

    .line 418
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bb;->c:Ljava/lang/String;

    .line 419
    invoke-virtual {p2, v0}, Lu/aly/bb;->c(Z)V

    .line 420
    invoke-virtual {p1, v0}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 421
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lu/aly/bb;->a:Ljava/lang/String;

    .line 423
    invoke-virtual {p2, v0}, Lu/aly/bb;->a(Z)V

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

    .line 396
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->b(Lu/aly/dg;Lu/aly/bb;)V

    return-void
.end method
