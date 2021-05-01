.class Lu/aly/ba$c;
.super Lu/aly/dr;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 442
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ba$1;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Lu/aly/ba$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/ba;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 446
    check-cast p1, Lu/aly/dm;

    .line 448
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 449
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/util/Map;

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

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 452
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bb;

    invoke-virtual {v1, p1}, Lu/aly/bb;->b(Lu/aly/dg;)V

    goto :goto_0

    .line 455
    :cond_0
    iget v0, p2, Lu/aly/ba;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 456
    iget-object p2, p2, Lu/aly/ba;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 442
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/ba$c;->a(Lu/aly/dg;Lu/aly/ba;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/ba;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 461
    check-cast p1, Lu/aly/dm;

    .line 463
    new-instance v0, Lu/aly/dd;

    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lu/aly/dd;-><init>(BBI)V

    .line 464
    new-instance v1, Ljava/util/HashMap;

    iget v2, v0, Lu/aly/dd;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/ba;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 465
    :goto_0
    iget v2, v0, Lu/aly/dd;->c:I

    if-ge v1, v2, :cond_0

    .line 469
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v2

    .line 470
    new-instance v3, Lu/aly/bb;

    invoke-direct {v3}, Lu/aly/bb;-><init>()V

    .line 471
    invoke-virtual {v3, p1}, Lu/aly/bb;->a(Lu/aly/dg;)V

    .line 472
    iget-object v4, p2, Lu/aly/ba;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 475
    invoke-virtual {p2, v0}, Lu/aly/ba;->a(Z)V

    .line 476
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v1

    iput v1, p2, Lu/aly/ba;->b:I

    .line 477
    invoke-virtual {p2, v0}, Lu/aly/ba;->b(Z)V

    .line 478
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lu/aly/ba;->c:Ljava/lang/String;

    .line 479
    invoke-virtual {p2, v0}, Lu/aly/ba;->c(Z)V

    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 442
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/ba$c;->b(Lu/aly/dg;Lu/aly/ba;)V

    return-void
.end method
