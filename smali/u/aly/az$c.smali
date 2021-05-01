.class Lu/aly/az$c;
.super Lu/aly/dr;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/az;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/az$1;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Lu/aly/az$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/az;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 484
    check-cast p1, Lu/aly/dm;

    .line 486
    iget-object v0, p2, Lu/aly/az;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 487
    iget-object v0, p2, Lu/aly/az;->a:Ljava/util/Map;

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

    .line 489
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 490
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ay;

    invoke-virtual {v1, p1}, Lu/aly/ay;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 493
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 494
    invoke-virtual {p2}, Lu/aly/az;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 497
    :cond_1
    invoke-virtual {p2}, Lu/aly/az;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 498
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const/4 v1, 0x2

    .line 500
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 501
    invoke-virtual {p2}, Lu/aly/az;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p2, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 504
    iget-object v0, p2, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/ax;

    .line 506
    invoke-virtual {v1, p1}, Lu/aly/ax;->b(Lu/aly/dg;)V

    goto :goto_1

    .line 510
    :cond_3
    invoke-virtual {p2}, Lu/aly/az;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    iget-object p2, p2, Lu/aly/az;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(Ljava/lang/String;)V

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

    .line 480
    check-cast p2, Lu/aly/az;

    invoke-virtual {p0, p1, p2}, Lu/aly/az$c;->a(Lu/aly/dg;Lu/aly/az;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/az;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 517
    check-cast p1, Lu/aly/dm;

    .line 519
    new-instance v0, Lu/aly/dd;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v1

    const/16 v2, 0xc

    const/16 v3, 0xb

    invoke-direct {v0, v3, v2, v1}, Lu/aly/dd;-><init>(BBI)V

    .line 520
    new-instance v1, Ljava/util/HashMap;

    iget v3, v0, Lu/aly/dd;->c:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/az;->a:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 521
    :goto_0
    iget v5, v0, Lu/aly/dd;->c:I

    if-ge v3, v5, :cond_0

    .line 525
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v5

    .line 526
    new-instance v6, Lu/aly/ay;

    invoke-direct {v6}, Lu/aly/ay;-><init>()V

    .line 527
    invoke-virtual {v6, p1}, Lu/aly/ay;->a(Lu/aly/dg;)V

    .line 528
    iget-object v7, p2, Lu/aly/az;->a:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 531
    invoke-virtual {p2, v0}, Lu/aly/az;->a(Z)V

    .line 532
    invoke-virtual {p1, v4}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v3

    .line 533
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 535
    new-instance v4, Lu/aly/dc;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lu/aly/dc;-><init>(BI)V

    .line 536
    new-instance v2, Ljava/util/ArrayList;

    iget v5, v4, Lu/aly/dc;->b:I

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, Lu/aly/az;->b:Ljava/util/List;

    .line 537
    :goto_1
    iget v2, v4, Lu/aly/dc;->b:I

    if-ge v1, v2, :cond_1

    .line 540
    new-instance v2, Lu/aly/ax;

    invoke-direct {v2}, Lu/aly/ax;-><init>()V

    .line 541
    invoke-virtual {v2, p1}, Lu/aly/ax;->a(Lu/aly/dg;)V

    .line 542
    iget-object v5, p2, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 545
    :cond_1
    invoke-virtual {p2, v0}, Lu/aly/az;->b(Z)V

    .line 547
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lu/aly/az;->c:Ljava/lang/String;

    .line 549
    invoke-virtual {p2, v0}, Lu/aly/az;->c(Z)V

    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 480
    check-cast p2, Lu/aly/az;

    invoke-virtual {p0, p1, p2}, Lu/aly/az$c;->b(Lu/aly/dg;Lu/aly/az;)V

    return-void
.end method
