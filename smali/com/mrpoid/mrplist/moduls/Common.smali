.class public Lcom/mrpoid/mrplist/moduls/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final DIR_NAME:Ljava/lang/String; = "mythroad"

.field public static final PATH_DOWN:Ljava/lang/String;

.field public static final PATH_ROOT:Ljava/lang/String;

.field public static final log:Lcom/edroid/common/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Common"

    .line 11
    invoke-static {v0}, Lcom/edroid/common/utils/Logger;->create(Ljava/lang/String;)Lcom/edroid/common/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/mrplist/moduls/Common;->log:Lcom/edroid/common/utils/Logger;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mythroad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/mrplist/moduls/Common;->PATH_ROOT:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mrpoid/mrplist/moduls/Common;->PATH_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/mrplist/moduls/Common;->PATH_DOWN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
