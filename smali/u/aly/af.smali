.class public Lu/aly/af;
.super Lu/aly/av;
.source "UEKV.java"

# interfaces
.implements Lu/aly/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;JI)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lu/aly/av;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lu/aly/af;->a(Ljava/lang/String;)Lu/aly/av;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/af;->b(J)Lu/aly/av;

    .line 22
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 23
    invoke-direct {p0, p2}, Lu/aly/af;->b(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/aly/af;->a(Ljava/util/Map;)Lu/aly/av;

    :cond_0
    if-lez p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    .line 26
    :goto_0
    invoke-virtual {p0, p5}, Lu/aly/af;->a(I)Lu/aly/av;

    const-wide/16 p1, 0x0

    cmp-long p5, p3, p1

    if-lez p5, :cond_2

    .line 29
    invoke-virtual {p0, p3, p4}, Lu/aly/af;->a(J)Lu/aly/av;

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lu/aly/ae;"
        }
    .end annotation

    .line 75
    new-instance v0, Lu/aly/ae;

    invoke-direct {v0}, Lu/aly/ae;-><init>()V

    .line 76
    iput-object p0, v0, Lu/aly/ae;->b:Ljava/lang/String;

    .line 77
    iput-object p1, v0, Lu/aly/ae;->c:Ljava/lang/String;

    .line 78
    iput-object p2, v0, Lu/aly/ae;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lu/aly/bh;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_6

    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    new-instance v3, Lu/aly/bh;

    invoke-direct {v3}, Lu/aly/bh;-><init>()V

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 50
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 51
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lu/aly/bh;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_0
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 53
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bh;->b(J)V

    goto :goto_1

    .line 54
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 55
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bh;->b(J)V

    goto :goto_1

    .line 56
    :cond_2
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 57
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bh;->b(J)V

    goto :goto_1

    .line 58
    :cond_3
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_4

    .line 59
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lu/aly/bh;->b(J)V

    .line 62
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lu/aly/bh;->k()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 66
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public a(Lu/aly/bn;Ljava/lang/String;)V
    .locals 3

    .line 90
    invoke-virtual {p1}, Lu/aly/bn;->s()I

    move-result v0

    if-lez v0, :cond_1

    .line 91
    invoke-virtual {p1}, Lu/aly/bn;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bc;

    .line 92
    invoke-virtual {v1}, Lu/aly/bc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 100
    new-instance v1, Lu/aly/bc;

    invoke-direct {v1}, Lu/aly/bc;-><init>()V

    .line 101
    invoke-virtual {v1, p2}, Lu/aly/bc;->a(Ljava/lang/String;)Lu/aly/bc;

    .line 102
    invoke-virtual {p1, v1}, Lu/aly/bn;->a(Lu/aly/bc;)V

    .line 105
    :cond_2
    invoke-virtual {v1, p0}, Lu/aly/bc;->a(Lu/aly/av;)V

    return-void
.end method
