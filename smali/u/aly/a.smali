.class public abstract Lu/aly/a;
.super Ljava/lang/Object;
.source "AbstractIdTracker.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lu/aly/ay;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 12
    iput v0, p0, Lu/aly/a;->a:I

    const/16 v0, 0x14

    .line 13
    iput v0, p0, Lu/aly/a;->b:I

    .line 19
    iput-object p1, p0, Lu/aly/a;->c:Ljava/lang/String;

    return-void
.end method

.method private g()Z
    .locals 8

    .line 39
    iget-object v0, p0, Lu/aly/a;->e:Lu/aly/ay;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lu/aly/ay;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lu/aly/ay;->j()I

    move-result v3

    .line 43
    :goto_1
    invoke-virtual {p0}, Lu/aly/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lu/aly/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_2

    .line 46
    new-instance v0, Lu/aly/ay;

    invoke-direct {v0}, Lu/aly/ay;-><init>()V

    .line 48
    :cond_2
    invoke-virtual {v0, v4}, Lu/aly/ay;->a(Ljava/lang/String;)Lu/aly/ay;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lu/aly/ay;->a(J)Lu/aly/ay;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 50
    invoke-virtual {v0, v3}, Lu/aly/ay;->a(I)Lu/aly/ay;

    .line 52
    new-instance v3, Lu/aly/ax;

    invoke-direct {v3}, Lu/aly/ax;-><init>()V

    .line 53
    iget-object v6, p0, Lu/aly/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lu/aly/ax;->a(Ljava/lang/String;)Lu/aly/ax;

    .line 54
    invoke-virtual {v3, v4}, Lu/aly/ax;->c(Ljava/lang/String;)Lu/aly/ax;

    .line 55
    invoke-virtual {v3, v1}, Lu/aly/ax;->b(Ljava/lang/String;)Lu/aly/ax;

    .line 56
    invoke-virtual {v0}, Lu/aly/ay;->f()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lu/aly/ax;->a(J)Lu/aly/ax;

    .line 58
    iget-object v1, p0, Lu/aly/a;->d:Ljava/util/List;

    if-nez v1, :cond_3

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lu/aly/a;->d:Ljava/util/List;

    .line 62
    :cond_3
    iget-object v1, p0, Lu/aly/a;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lu/aly/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_4

    .line 65
    iget-object v1, p0, Lu/aly/a;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    :cond_4
    iput-object v0, p0, Lu/aly/a;->e:Lu/aly/ay;

    return v5

    :cond_5
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "0"

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v1, "unknown"

    .line 106
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lu/aly/a;->d:Ljava/util/List;

    return-void
.end method

.method public a(Lu/aly/ay;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lu/aly/a;->e:Lu/aly/ay;

    return-void
.end method

.method public a(Lu/aly/az;)V
    .locals 3

    .line 116
    invoke-virtual {p1}, Lu/aly/az;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lu/aly/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ay;

    iput-object v0, p0, Lu/aly/a;->e:Lu/aly/ay;

    .line 118
    invoke-virtual {p1}, Lu/aly/az;->j()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 121
    iget-object v0, p0, Lu/aly/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/a;->d:Ljava/util/List;

    .line 125
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 126
    iget-object v1, p0, Lu/aly/a;->c:Ljava/lang/String;

    iget-object v2, v0, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lu/aly/a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .line 23
    invoke-direct {p0}, Lu/aly/a;->g()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lu/aly/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 31
    iget-object v0, p0, Lu/aly/a;->e:Lu/aly/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/a;->e:Lu/aly/ay;

    invoke-virtual {v0}, Lu/aly/ay;->j()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()Lu/aly/ay;
    .locals 1

    .line 76
    iget-object v0, p0, Lu/aly/a;->e:Lu/aly/ay;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lu/aly/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method
