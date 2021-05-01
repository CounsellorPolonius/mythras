.class public Lcom/mrpoid/mrplist/moduls/Store$AppItem;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/moduls/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation


# instance fields
.field public _id:I

.field public addTime:Ljava/lang/String;

.field public appid:I

.field public desc:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:I

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method fromJson(Lorg/json/JSONObject;)Lcom/mrpoid/mrplist/moduls/Store$AppItem;
    .locals 2

    :try_start_0
    const-string v0, "_id"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->_id:I

    const-string v0, "appid"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->appid:I

    const-string v0, "type"

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->type:I

    const-string v0, "label"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->label:Ljava/lang/String;

    const-string v0, "name"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->name:Ljava/lang/String;

    const-string v0, "vendor"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->vendor:Ljava/lang/String;

    const-string v0, "desc"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->desc:Ljava/lang/String;

    const-string v0, "icon"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->icon:Ljava/lang/String;

    const-string v0, "addTime"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->addTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->desc:Ljava/lang/String;

    invoke-static {p1}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->vendor:Ljava/lang/String;

    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->desc:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
