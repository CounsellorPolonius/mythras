.class Lu/aly/as$c;
.super Lu/aly/dr;
.source "Ekv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/as;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 550
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/as$1;)V
    .locals 0

    .line 550
    invoke-direct {p0}, Lu/aly/as$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/as;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 554
    check-cast p1, Lu/aly/dm;

    .line 555
    iget-wide v0, p2, Lu/aly/as;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 556
    iget-object v0, p2, Lu/aly/as;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 558
    iget-object v0, p2, Lu/aly/as;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 559
    iget-object v0, p2, Lu/aly/as;->c:Ljava/util/Map;

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

    .line 561
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 562
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dm;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 566
    invoke-virtual {p2}, Lu/aly/as;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 567
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 569
    :cond_1
    invoke-virtual {p2}, Lu/aly/as;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 570
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    .line 572
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 573
    invoke-virtual {p2}, Lu/aly/as;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    iget-wide v0, p2, Lu/aly/as;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 576
    :cond_3
    invoke-virtual {p2}, Lu/aly/as;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 577
    iget p2, p2, Lu/aly/as;->e:I

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

    .line 550
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/as$c;->a(Lu/aly/dg;Lu/aly/as;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/as;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 583
    check-cast p1, Lu/aly/dm;

    .line 584
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/as;->a:J

    const/4 v0, 0x1

    .line 585
    invoke-virtual {p2, v0}, Lu/aly/as;->a(Z)V

    .line 586
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/as;->b:Ljava/lang/String;

    .line 587
    invoke-virtual {p2, v0}, Lu/aly/as;->b(Z)V

    .line 589
    new-instance v1, Lu/aly/dd;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v2

    const/16 v3, 0xb

    invoke-direct {v1, v3, v3, v2}, Lu/aly/dd;-><init>(BBI)V

    .line 590
    new-instance v2, Ljava/util/HashMap;

    iget v3, v1, Lu/aly/dd;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p2, Lu/aly/as;->c:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 591
    :goto_0
    iget v5, v1, Lu/aly/dd;->c:I

    if-ge v3, v5, :cond_0

    .line 595
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v5

    .line 596
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v6

    .line 597
    iget-object v7, p2, Lu/aly/as;->c:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p2, v0}, Lu/aly/as;->c(Z)V

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

    iput-wide v2, p2, Lu/aly/as;->d:J

    .line 604
    invoke-virtual {p2, v0}, Lu/aly/as;->d(Z)V

    .line 606
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result p1

    iput p1, p2, Lu/aly/as;->e:I

    .line 608
    invoke-virtual {p2, v0}, Lu/aly/as;->e(Z)V

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

    .line 550
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/as$c;->b(Lu/aly/dg;Lu/aly/as;)V

    return-void
.end method
