.class public Lcom/edroid/common/utils/Frequency;
.super Ljava/lang/Object;
.source "Frequency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/edroid/common/utils/Frequency$Entiry;
    }
.end annotation


# instance fields
.field private changeFlag:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/edroid/common/utils/Frequency$Entiry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/edroid/common/utils/Frequency;->map:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/edroid/common/utils/Frequency;->set:Ljava/util/Set;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/edroid/common/utils/Frequency;->changeFlag:Z

    return-void
.end method

.method private dataChanged()V
    .locals 5

    .line 39
    iget-boolean v0, p0, Lcom/edroid/common/utils/Frequency;->changeFlag:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/edroid/common/utils/Frequency;->set:Ljava/util/Set;

    new-instance v3, Lcom/edroid/common/utils/Frequency$Entiry;

    iget-object v4, p0, Lcom/edroid/common/utils/Frequency;->map:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {v3, p0, v1, v4}, Lcom/edroid/common/utils/Frequency$Entiry;-><init>(Lcom/edroid/common/utils/Frequency;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/edroid/common/utils/Frequency;->changeFlag:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 88
    new-instance p0, Lcom/edroid/common/utils/Frequency;

    invoke-direct {p0}, Lcom/edroid/common/utils/Frequency;-><init>()V

    const-string v0, "w"

    .line 89
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "w"

    .line 90
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "w"

    .line 91
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "a"

    .line 93
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "z"

    .line 95
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "z"

    .line 96
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "z"

    .line 97
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "z"

    .line 98
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "c"

    .line 100
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "c"

    .line 101
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "c"

    .line 102
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    const-string v0, "c"

    .line 103
    invoke-virtual {p0, v0}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/edroid/common/utils/Frequency;->getMaxValueItem()Lcom/edroid/common/utils/Frequency$Entiry;

    .line 106
    invoke-virtual {p0}, Lcom/edroid/common/utils/Frequency;->getDataDesc()Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStatistics(Ljava/lang/String;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    iget-object v1, p0, Lcom/edroid/common/utils/Frequency;->map:Ljava/util/Map;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getDataDesc()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/edroid/common/utils/Frequency$Entiry;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/edroid/common/utils/Frequency;->dataChanged()V

    .line 77
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/edroid/common/utils/Frequency$Entiry;

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/edroid/common/utils/Frequency$Entiry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getMaxValueItem()Lcom/edroid/common/utils/Frequency$Entiry;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/edroid/common/utils/Frequency;->dataChanged()V

    .line 61
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/edroid/common/utils/Frequency$Entiry;

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/edroid/common/utils/Frequency$Entiry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method
