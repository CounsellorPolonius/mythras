.class public Lcom/mrpoid/mrplist/moduls/Store$MrpItem;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/moduls/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MrpItem"
.end annotation


# instance fields
.field public addTime:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public fsize:Ljava/lang/String;

.field public isDown:Z

.field public md5:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public ver:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIsDown()Z
    .locals 6

    .line 77
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mrpoid/mrplist/moduls/Common;->PATH_DOWN:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/mrpoid/mrplist/moduls/Common;->PATH_DOWN:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->path:Ljava/lang/String;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->isDown:Z

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->isDown:Z

    return v0
.end method

.method fromJson(Lorg/json/JSONObject;)Lcom/mrpoid/mrplist/moduls/Store$MrpItem;
    .locals 1

    :try_start_0
    const-string v0, "ver"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->ver:I

    const-string v0, "md5"

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->md5:Ljava/lang/String;

    const-string v0, "fsize"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->fsize:Ljava/lang/String;

    const-string v0, "url"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->url:Ljava/lang/String;

    const-string v0, "addTime"

    .line 68
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->addTime:Ljava/lang/String;

    const-string v0, "desc"

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public saveDl(Ljava/io/File;)V
    .locals 4

    .line 95
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mrpoid/mrplist/moduls/Common;->PATH_DOWN:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edroid/common/utils/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->isDown:Z

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->path:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->ver:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->fsize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
