.class public Lcom/edroid/common/utils/Frequency$Entiry;
.super Ljava/lang/Object;
.source "Frequency.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/Frequency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entiry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/edroid/common/utils/Frequency$Entiry;",
        ">;"
    }
.end annotation


# instance fields
.field private count:Ljava/lang/Integer;

.field private key:Ljava/lang/String;

.field final synthetic this$0:Lcom/edroid/common/utils/Frequency;


# direct methods
.method public constructor <init>(Lcom/edroid/common/utils/Frequency;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/edroid/common/utils/Frequency$Entiry;->this$0:Lcom/edroid/common/utils/Frequency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/edroid/common/utils/Frequency$Entiry;->key:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/edroid/common/utils/Frequency$Entiry;->count:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/edroid/common/utils/Frequency$Entiry;)I
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency$Entiry;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/edroid/common/utils/Frequency$Entiry;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency$Entiry;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/edroid/common/utils/Frequency$Entiry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    neg-int p1, v0

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Lcom/edroid/common/utils/Frequency$Entiry;

    invoke-virtual {p0, p1}, Lcom/edroid/common/utils/Frequency$Entiry;->compareTo(Lcom/edroid/common/utils/Frequency$Entiry;)I

    move-result p1

    return p1
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency$Entiry;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/edroid/common/utils/Frequency$Entiry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/edroid/common/utils/Frequency$Entiry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u51fa\u73b0\u7684\u6b21\u6570\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/edroid/common/utils/Frequency$Entiry;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
