.class public Lu/aly/m;
.super Ljava/lang/Object;
.source "Caretaker.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lu/aly/ae;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "umeng_event_snapshot"

    .line 13
    iput-object v0, p0, Lu/aly/m;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lu/aly/m;->b:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/m;->d:Ljava/util/Map;

    const-string v0, "umeng_event_snapshot"

    .line 20
    invoke-static {p1, v0}, Lu/aly/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lu/aly/m;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 78
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v0}, Lu/aly/u;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 85
    :goto_1
    iget-object v1, p0, Lu/aly/m;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    .line 94
    iget-object v0, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 98
    :cond_0
    iget-object v0, p0, Lu/aly/m;->c:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {v0}, Lu/aly/u;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 103
    iget-object v2, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    .line 28
    iget-object v0, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Lu/aly/ae;)V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lu/aly/m;->b:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lu/aly/m;->d(Ljava/lang/String;)Z

    .line 40
    :cond_0
    iget-object v0, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p2, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_0
    iget-boolean p2, p0, Lu/aly/m;->b:Z

    if-eqz p2, :cond_2

    .line 49
    invoke-direct {p0, p1}, Lu/aly/m;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lu/aly/m;->b:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ae;
    .locals 3

    .line 54
    iget-boolean v0, p0, Lu/aly/m;->b:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lu/aly/m;->d(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lu/aly/m;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ae;

    .line 66
    :cond_1
    iget-boolean v1, p0, Lu/aly/m;->b:Z

    if-eqz v1, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lu/aly/m;->c(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
