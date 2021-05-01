.class Lu/aly/ax$c;
.super Lu/aly/dr;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/ax;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ax$1;)V
    .locals 0

    .line 457
    invoke-direct {p0}, Lu/aly/ax$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 461
    check-cast p1, Lu/aly/dm;

    .line 462
    iget-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 463
    iget-object v0, p2, Lu/aly/ax;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 464
    iget-wide v0, p2, Lu/aly/ax;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 465
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 466
    invoke-virtual {p2}, Lu/aly/ax;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 467
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    .line 469
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 470
    invoke-virtual {p2}, Lu/aly/ax;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object p2, p2, Lu/aly/ax;->b:Ljava/lang/String;

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

    .line 457
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/ax$c;->a(Lu/aly/dg;Lu/aly/ax;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/ax;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 477
    check-cast p1, Lu/aly/dm;

    .line 478
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ax;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 479
    invoke-virtual {p2, v0}, Lu/aly/ax;->a(Z)V

    .line 480
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ax;->c:Ljava/lang/String;

    .line 481
    invoke-virtual {p2, v0}, Lu/aly/ax;->c(Z)V

    .line 482
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/ax;->d:J

    .line 483
    invoke-virtual {p2, v0}, Lu/aly/ax;->d(Z)V

    .line 484
    invoke-virtual {p1, v0}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 485
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lu/aly/ax;->b:Ljava/lang/String;

    .line 487
    invoke-virtual {p2, v0}, Lu/aly/ax;->b(Z)V

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

    .line 457
    check-cast p2, Lu/aly/ax;

    invoke-virtual {p0, p1, p2}, Lu/aly/ax$c;->b(Lu/aly/dg;Lu/aly/ax;)V

    return-void
.end method
