.class public Lcom/mrpoid/mrplist/moduls/MpFile;
.super Ljava/lang/Object;
.source "MpFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mrpoid/mrplist/moduls/MpFile;",
        ">;"
    }
.end annotation


# instance fields
.field private isDir:Z

.field private isParent:Z

.field lastTimeS:Ljava/lang/String;

.field private length:J

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private sizeStr:Ljava/lang/String;

.field private time:J

.field private title:Ljava/lang/String;

.field private type:Lcom/mrpoid/mrplist/moduls/FileType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".."

    .line 31
    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    const-string v0, "\u7236\u76ee\u5f55"

    .line 32
    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->msg:Ljava/lang/String;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    .line 34
    iput-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isParent:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 35
    iput-wide v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->time:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->path:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->length:J

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mrpoid/mrplist/moduls/MpFile;->setLastTime(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mrpoid/mrplist/moduls/MpFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private coverSize(J)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-wide/16 v1, 0x400

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "b"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v0, p1, v3

    const/high16 v3, 0x44800000    # 1024.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v0, :cond_1

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.2f K"

    new-array v2, v5, [Ljava/lang/Object;

    long-to-float p1, p1

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide/32 v6, 0x40000000

    cmp-long v0, p1, v6

    if-gez v0, :cond_2

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v6, "%.2f M"

    new-array v5, v5, [Ljava/lang/Object;

    div-long/2addr p1, v1

    long-to-float p1, p1

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v6, "%.2f G"

    new-array v5, v5, [Ljava/lang/Object;

    div-long/2addr p1, v1

    div-long/2addr p1, v1

    long-to-float p1, p1

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public compareTo(Lcom/mrpoid/mrplist/moduls/MpFile;)I
    .locals 6

    .line 124
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isParent:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 126
    :cond_0
    iget-boolean v0, p1, Lcom/mrpoid/mrplist/moduls/MpFile;->isParent:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 129
    :cond_1
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    if-nez v0, :cond_2

    return v1

    .line 131
    :cond_2
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    if-eqz v0, :cond_3

    return v2

    .line 137
    :cond_3
    iget-wide v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->time:J

    iget-wide v2, p1, Lcom/mrpoid/mrplist/moduls/MpFile;->time:J

    sub-long v4, v0, v2

    long-to-int p1, v4

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/mrpoid/mrplist/moduls/MpFile;

    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/moduls/MpFile;->compareTo(Lcom/mrpoid/mrplist/moduls/MpFile;)I

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->length:J

    return-wide v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->msg:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getType()Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object v0

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->FOLDER:Lcom/mrpoid/mrplist/moduls/FileType;

    if-ne v0, v1, :cond_0

    const-string v0, "\u76ee\u5f55"

    .line 85
    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->msg:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->lastTimeS:Ljava/lang/String;

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->msg:Ljava/lang/String;

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeString()Ljava/lang/String;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->sizeStr:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getType()Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object v0

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->FOLDER:Lcom/mrpoid/mrplist/moduls/FileType;

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->sizeStr:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_0
    iget-wide v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->length:J

    invoke-direct {p0, v0, v1}, Lcom/mrpoid/mrplist/moduls/MpFile;->coverSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->sizeStr:Ljava/lang/String;

    .line 105
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->sizeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTtile()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getType()Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object v0

    sget-object v1, Lcom/mrpoid/mrplist/moduls/FileType;->MRP:Lcom/mrpoid/mrplist/moduls/FileType;

    if-ne v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mrpoid/MrpUtils;->readMrpLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->title:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->title:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->title:Ljava/lang/String;

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/mrpoid/mrplist/moduls/FileType;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->type:Lcom/mrpoid/mrplist/moduls/FileType;

    if-nez v0, :cond_1

    .line 76
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mrpoid/mrplist/moduls/FileType;->FOLDER:Lcom/mrpoid/mrplist/moduls/FileType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/mrpoid/mrplist/moduls/FileType;->getTypeByName(Ljava/lang/String;)Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->type:Lcom/mrpoid/mrplist/moduls/FileType;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->type:Lcom/mrpoid/mrplist/moduls/FileType;

    return-object v0
.end method

.method public isDir()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    return v0
.end method

.method public isFile()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isDir:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isParent()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->isParent:Z

    return v0
.end method

.method public setLastTime(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->time:J

    .line 55
    invoke-static {p1, p2}, Lcom/edroid/common/utils/TimeUtils;->getDateTime(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->lastTimeS:Ljava/lang/String;

    return-void
.end method

.method public toFile()Ljava/io/File;
    .locals 3

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/mrplist/moduls/MpFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
