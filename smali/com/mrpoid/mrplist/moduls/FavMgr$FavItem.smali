.class Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;
.super Ljava/lang/Object;
.source "FavMgr.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/moduls/FavMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavItem"
.end annotation


# instance fields
.field public path:Ljava/lang/String;

.field public touchTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->path:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->touchTime:J

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    check-cast p1, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    iget-wide v0, p1, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->touchTime:J

    iget-wide v2, p0, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->touchTime:J

    sub-long v4, v0, v2

    long-to-int p1, v4

    return p1
.end method

.method fromJson(Lorg/json/JSONObject;)Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;
    .locals 2

    :try_start_0
    const-string v0, "path"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->path:Ljava/lang/String;

    const-string v0, "touchTime"

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->touchTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method isValid()Z
    .locals 2

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 4

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "path"

    .line 49
    iget-object v2, p0, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "touchTime"

    .line 50
    iget-wide v2, p0, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->touchTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
