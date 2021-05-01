.class public Lcom/mrpoid/mrplist/moduls/FavMgr;
.super Ljava/lang/Object;
.source "FavMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;
    }
.end annotation


# static fields
.field private static instance:Lcom/mrpoid/mrplist/moduls/FavMgr;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lcom/mrpoid/mrplist/moduls/FavMgr;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/moduls/FavMgr;-><init>()V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/FavMgr;->instance:Lcom/mrpoid/mrplist/moduls/FavMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/mrpoid/mrplist/moduls/FavMgr;
    .locals 1

    .line 155
    sget-object v0, Lcom/mrpoid/mrplist/moduls/FavMgr;->instance:Lcom/mrpoid/mrplist/moduls/FavMgr;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 6

    .line 104
    sget-object v0, Lcom/mrpoid/mrplist/app/MyApplication;->gContext:Landroid/content/Context;

    const-string v1, "favorate.list"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 109
    new-instance v4, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4}, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    iget-object v5, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    .line 84
    iget-object v1, v1, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    new-instance v1, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    invoke-direct {v1, p1}, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 90
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->save()V

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/MpFile;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    .line 96
    new-instance v3, Lcom/mrpoid/mrplist/moduls/MpFile;

    iget-object v4, v2, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/mrpoid/mrplist/moduls/MpFile;-><init>(Ljava/lang/String;)V

    .line 97
    iget-wide v4, v2, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->touchTime:J

    invoke-virtual {v3, v4, v5}, Lcom/mrpoid/mrplist/moduls/MpFile;->setLastTime(J)V

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public read()V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->a()V

    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    sget-object v1, Lcom/mrpoid/mrplist/app/MyApplication;->gContext:Landroid/content/Context;

    const-string v2, "fav.json"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/edroid/common/utils/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 127
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 128
    new-instance v4, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    invoke-direct {v4}, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->fromJson(Lorg/json/JSONObject;)Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->save()V

    return-void
.end method

.method public save()V
    .locals 3

    .line 141
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    .line 143
    invoke-virtual {v2}, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 146
    :cond_0
    sget-object v1, Lcom/mrpoid/mrplist/app/MyApplication;->gContext:Landroid/content/Context;

    const-string v2, "fav.json"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 147
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v1, v0}, Lcom/edroid/common/utils/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public touch(I)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/mrpoid/mrplist/moduls/FavMgr$FavItem;->touchTime:J

    .line 78
    iget-object p1, p0, Lcom/mrpoid/mrplist/moduls/FavMgr;->list:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->save()V

    return-void
.end method
