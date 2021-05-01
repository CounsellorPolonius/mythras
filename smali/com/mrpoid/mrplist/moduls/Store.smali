.class public Lcom/mrpoid/mrplist/moduls/Store;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/mrplist/moduls/Store$MrpItem;,
        Lcom/mrpoid/mrplist/moduls/Store$AppItem;
    }
.end annotation


# static fields
.field static final URL:Ljava/lang/String; = "http://m.ejplay.com:8001/mrp/api.php?action="

.field static final URL_lsApp:Ljava/lang/String; = "http://m.ejplay.com:8001/mrp/api.php?action=lsApp"

.field static final URL_lsMrp:Ljava/lang/String; = "http://m.ejplay.com:8001/mrp/api.php?action=lsMrp"

.field static final URL_searchApp:Ljava/lang/String; = "http://m.ejplay.com:8001/mrp/api.php?action=searchApp"

.field private static instance:Lcom/mrpoid/mrplist/moduls/Store;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mrpoid/mrplist/moduls/Store;
    .locals 1

    .line 177
    sget-object v0, Lcom/mrpoid/mrplist/moduls/Store;->instance:Lcom/mrpoid/mrplist/moduls/Store;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/mrpoid/mrplist/moduls/Store;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/moduls/Store;-><init>()V

    sput-object v0, Lcom/mrpoid/mrplist/moduls/Store;->instance:Lcom/mrpoid/mrplist/moduls/Store;

    .line 179
    :cond_0
    sget-object v0, Lcom/mrpoid/mrplist/moduls/Store;->instance:Lcom/mrpoid/mrplist/moduls/Store;

    return-object v0
.end method


# virtual methods
.method public loadApp(III)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$AppItem;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://m.ejplay.com:8001/mrp/api.php?action=lsApp&start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/edroid/common/utils/HttpUtils;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 160
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rows"

    .line 161
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 162
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    :goto_0
    if-ge p2, p3, :cond_0

    .line 163
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    new-instance v2, Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    invoke-direct {v2}, Lcom/mrpoid/mrplist/moduls/Store$AppItem;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->fromJson(Lorg/json/JSONObject;)Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public loadMrp(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$MrpItem;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://m.ejplay.com:8001/mrp/api.php?action=lsMrp&appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/edroid/common/utils/HttpUtils;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rows"

    .line 120
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 122
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 123
    new-instance v4, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

    invoke-direct {v4}, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->fromJson(Lorg/json/JSONObject;)Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->checkIsDown()Z

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public searchByLabel(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$AppItem;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "http://m.ejplay.com:8001/mrp/api.php?action=searchApp"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&type=lebel"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/edroid/common/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rows"

    .line 141
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 143
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 144
    new-instance v4, Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    invoke-direct {v4}, Lcom/mrpoid/mrplist/moduls/Store$AppItem;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->fromJson(Lorg/json/JSONObject;)Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method
