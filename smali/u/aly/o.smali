.class public Lu/aly/o;
.super Ljava/lang/Object;
.source "EventTracker.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lu/aly/m;

.field private d:Landroid/content/Context;

.field private e:Lu/aly/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 22
    iput v0, p0, Lu/aly/o;->a:I

    const/16 v0, 0x100

    .line 23
    iput v0, p0, Lu/aly/o;->b:I

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context is null, can\'t track event"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lu/aly/o;->d:Landroid/content/Context;

    .line 34
    new-instance p1, Lu/aly/m;

    iget-object v0, p0, Lu/aly/o;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Lu/aly/m;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lu/aly/o;->c:Lu/aly/m;

    .line 35
    iget-object p1, p0, Lu/aly/o;->c:Lu/aly/m;

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lu/aly/m;->a(Z)V

    .line 36
    iget-object p1, p0, Lu/aly/o;->d:Landroid/content/Context;

    invoke-static {p1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object p1

    iput-object p1, p0, Lu/aly/o;->e:Lu/aly/l;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    const/16 v0, 0x80

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "MobclickAgent"

    const-string v0, "Event id is empty or too long in tracking Event"

    .line 137
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 153
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lu/aly/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 163
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    .line 167
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lu/aly/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    const-string p1, "MobclickAgent"

    const-string v1, "map is null or empty in onEvent"

    .line 154
    invoke-static {p1, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    const/16 v1, 0x100

    if-gt p1, v1, :cond_1

    return v0

    :cond_1
    const-string p1, "MobclickAgent"

    const-string v0, "Event label or value is empty or too long in tracking Event"

    .line 148
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 83
    invoke-direct {p0, p1}, Lu/aly/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lu/aly/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lu/aly/o;->c:Lu/aly/m;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lu/aly/af;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v1}, Lu/aly/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/ae;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lu/aly/m;->a(Ljava/lang/String;Lu/aly/ae;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    .line 60
    invoke-direct {p0, p1}, Lu/aly/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lu/aly/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez p2, :cond_1

    const-string p2, ""

    .line 65
    :cond_1
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p2, p0, Lu/aly/o;->e:Lu/aly/l;

    new-instance v0, Lu/aly/af;

    move-object v1, v0

    move-object v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lu/aly/af;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {p2, v0}, Lu/aly/l;->a(Lu/aly/q;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lu/aly/o;->e:Lu/aly/l;

    new-instance v1, Lu/aly/ah;

    invoke-direct {v1, p1, p2}, Lu/aly/ah;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lu/aly/l;->a(Lu/aly/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string v0, "Exception occurred in Mobclick.onEvent(). "

    .line 78
    invoke-static {p2, v0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-direct {p0, p2}, Lu/aly/o;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lu/aly/o;->e:Lu/aly/l;

    new-instance v7, Lu/aly/af;

    const/4 v6, -0x1

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lu/aly/af;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v7}, Lu/aly/l;->a(Lu/aly/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobclickAgent"

    const-string p3, "Exception occurred in Mobclick.onEvent(). "

    .line 53
    invoke-static {p2, p3, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lu/aly/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p2}, Lu/aly/o;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lu/aly/o;->c:Lu/aly/m;

    invoke-static {p1, p3, p2}, Lu/aly/af;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, p2}, Lu/aly/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/ae;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lu/aly/m;->a(Ljava/lang/String;Lu/aly/ae;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 90
    invoke-direct {p0, p1}, Lu/aly/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lu/aly/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lu/aly/o;->c:Lu/aly/m;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lu/aly/af;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/m;->b(Ljava/lang/String;)Lu/aly/ae;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lu/aly/ae;->a:J

    sub-long v5, v1, v3

    long-to-int v0, v5

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 98
    invoke-virtual/range {v1 .. v6}, Lu/aly/o;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 115
    invoke-direct {p0, p1}, Lu/aly/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lu/aly/o;->c:Lu/aly/m;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lu/aly/af;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lu/aly/m;->b(Ljava/lang/String;)Lu/aly/ae;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lu/aly/ae;->a:J

    sub-long v4, v0, v2

    long-to-int v0, v4

    .line 123
    iget-object p2, p2, Lu/aly/ae;->d:Ljava/util/Map;

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lu/aly/o;->a(Ljava/lang/String;Ljava/util/Map;J)V

    :cond_1
    return-void
.end method
