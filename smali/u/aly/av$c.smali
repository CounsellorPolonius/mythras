.class Lu/aly/av$c;
.super Lu/aly/dr;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/av;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 549
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/av$1;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Lu/aly/av$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/av;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 553
    check-cast p1, Lu/aly/dm;

    .line 554
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 556
    iget-object v0, p2, Lu/aly/av;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 557
    iget-object v0, p2, Lu/aly/av;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 559
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 560
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bh;

    invoke-virtual {v1, p1}, Lu/aly/bh;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 563
    :cond_0
    iget-wide v0, p2, Lu/aly/av;->e:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 564
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 565
    invoke-virtual {p2}, Lu/aly/av;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 566
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 568
    :cond_1
    invoke-virtual {p2}, Lu/aly/av;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 569
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    .line 571
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 572
    invoke-virtual {p2}, Lu/aly/av;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-wide v0, p2, Lu/aly/av;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 575
    :cond_3
    invoke-virtual {p2}, Lu/aly/av;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    iget p2, p2, Lu/aly/av;->d:I

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(I)V

    :cond_4
    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 549
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/av$c;->a(Lu/aly/dg;Lu/aly/av;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/av;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 582
    check-cast p1, Lu/aly/dm;

    .line 583
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 584
    invoke-virtual {p2, v0}, Lu/aly/av;->a(Z)V

    .line 586
    new-instance v1, Lu/aly/dd;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v1, v3, v4, v2}, Lu/aly/dd;-><init>(BBI)V

    .line 587
    new-instance v2, Ljava/util/HashMap;

    iget v3, v1, Lu/aly/dd;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p2, Lu/aly/av;->b:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 588
    :goto_0
    iget v5, v1, Lu/aly/dd;->c:I

    if-ge v3, v5, :cond_0

    .line 592
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v5

    .line 593
    new-instance v6, Lu/aly/bh;

    invoke-direct {v6}, Lu/aly/bh;-><init>()V

    .line 594
    invoke-virtual {v6, p1}, Lu/aly/bh;->a(Lu/aly/dg;)V

    .line 595
    iget-object v7, p2, Lu/aly/av;->b:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p2, v0}, Lu/aly/av;->b(Z)V

    .line 599
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v5

    iput-wide v5, p2, Lu/aly/av;->e:J

    .line 600
    invoke-virtual {p2, v0}, Lu/aly/av;->e(Z)V

    .line 601
    invoke-virtual {p1, v4}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v1

    .line 602
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/av;->c:J

    .line 604
    invoke-virtual {p2, v0}, Lu/aly/av;->c(Z)V

    .line 606
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result p1

    iput p1, p2, Lu/aly/av;->d:I

    .line 608
    invoke-virtual {p2, v0}, Lu/aly/av;->d(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 549
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/av$c;->b(Lu/aly/dg;Lu/aly/av;)V

    return-void
.end method
