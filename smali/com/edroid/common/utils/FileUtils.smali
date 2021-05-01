.class public final Lcom/edroid/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/edroid/common/utils/FileUtils$MyFileLock;,
        Lcom/edroid/common/utils/FileUtils$FileState;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x8000

.field public static final FAILED:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field private static final SIG_SET_PERMISSION:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final SUCCESS:I = 0x0

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static exReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 794
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/edroid/common/utils/FileUtils;->SIG_SET_PERMISSION:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assetExist(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 503
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 508
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return p1

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 510
    :catch_1
    throw p0

    .line 508
    :catch_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 p0, 0x0

    return p0
.end method

.method public static assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 458
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 460
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p0, v0

    .line 464
    :goto_0
    :try_start_3
    invoke-static {p1}, Lcom/edroid/common/utils/FileUtils;->setLastException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 469
    :catch_4
    throw p1
.end method

.method public static assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I
    .locals 1

    const/4 v0, 0x0

    .line 414
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 415
    :try_start_1
    invoke-static {p2, p0, p1}, Lcom/edroid/common/utils/FileUtils;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 421
    :catch_2
    throw p1

    .line 419
    :catch_3
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 p0, -0x1

    return p0
.end method

.method public static assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 396
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/edroid/common/utils/FileUtils;->assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static assetToFileIfNotExist(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I
    .locals 2

    const/4 v0, 0x0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 431
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lcom/edroid/common/utils/FileUtils;->checkExistBySize(Ljava/io/File;J)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 432
    invoke-static {p2, p0, v0}, Lcom/edroid/common/utils/FileUtils;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p1

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 441
    :catch_2
    throw p1

    :catch_3
    move-object p0, v0

    .line 439
    :catch_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 p0, -0x1

    return p0
.end method

.method public static assetToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 488
    invoke-static {p0, p1}, Lcom/edroid/common/utils/FileUtils;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 490
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static bytesToFile(Ljava/io/File;[B)I
    .locals 2

    .line 283
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/edroid/common/utils/FileUtils;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result p0

    return p0
.end method

.method public static bytesToFile(Ljava/io/File;[BIIZ)I
    .locals 3

    .line 252
    invoke-static {p0}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/io/File;)V

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-gtz p3, :cond_1

    .line 258
    array-length p3, p1

    :cond_1
    const/4 v1, 0x0

    .line 262
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 264
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    .line 270
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 272
    :catch_2
    throw p0

    .line 270
    :catch_3
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return v0
.end method

.method public static bytesToFile(Ljava/io/File;[BZ)I
    .locals 2

    .line 279
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/edroid/common/utils/FileUtils;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result p0

    return p0
.end method

.method public static bytesToFile(Ljava/lang/String;[BIIZ)I
    .locals 1

    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/edroid/common/utils/FileUtils;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result p0

    return p0
.end method

.method public static checkExistBySize(Ljava/io/File;J)Z
    .locals 2

    .line 783
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkParentPath(Ljava/io/File;)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-static {p0}, Lcom/edroid/common/utils/FileUtils;->createDir(Ljava/io/File;)I

    :cond_0
    return-void
.end method

.method public static checkParentPath(Ljava/lang/String;)V
    .locals 1

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/io/File;)V

    return-void
.end method

.method public static copyTo(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    .line 373
    invoke-static {p1}, Lcom/edroid/common/utils/FileUtils;->fileState(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$FileState;

    move-result-object v0

    sget-object v1, Lcom/edroid/common/utils/FileUtils$FileState;->FState_File:Lcom/edroid/common/utils/FileUtils$FileState;

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 378
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 380
    :try_start_1
    invoke-static {p0, v1, p1}, Lcom/edroid/common/utils/FileUtils;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 386
    :catch_2
    throw p0

    .line 384
    :catch_3
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return v2
.end method

.method public static copyTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 369
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/edroid/common/utils/FileUtils;->copyTo(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static coverSize(J)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-wide/16 v1, 0x400

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "b"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v0, p0, v3

    const/high16 v3, 0x44800000    # 1024.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v0, :cond_1

    .line 569
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.1fK"

    new-array v2, v5, [Ljava/lang/Object;

    long-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v6, 0x40000000

    cmp-long v0, p0, v6

    if-gez v0, :cond_2

    .line 571
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v6, "%.1fM"

    new-array v5, v5, [Ljava/lang/Object;

    div-long/2addr p0, v1

    long-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 573
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v6, "%.1fG"

    new-array v5, v5, [Ljava/lang/Object;

    div-long/2addr p0, v1

    div-long/2addr p0, v1

    long-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static createDir(Ljava/io/File;)I
    .locals 2

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static createDir(Ljava/lang/String;)I
    .locals 1

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->createDir(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static createLink(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ln -s %s %s"

    const/4 v2, 0x2

    .line 820
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 822
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 823
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 826
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 827
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(I)V

    goto :goto_0

    .line 830
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 831
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static deleteBlankPath(Ljava/lang/String;)I
    .locals 1

    .line 751
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 755
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 758
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static fileState(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$FileState;
    .locals 1

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object p0, Lcom/edroid/common/utils/FileUtils$FileState;->FState_None:Lcom/edroid/common/utils/FileUtils$FileState;

    return-object p0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object p0, Lcom/edroid/common/utils/FileUtils$FileState;->FState_File:Lcom/edroid/common/utils/FileUtils$FileState;

    return-object p0

    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 108
    sget-object p0, Lcom/edroid/common/utils/FileUtils$FileState;->FState_Dir:Lcom/edroid/common/utils/FileUtils$FileState;

    return-object p0

    .line 110
    :cond_2
    sget-object p0, Lcom/edroid/common/utils/FileUtils$FileState;->FState_Other:Lcom/edroid/common/utils/FileUtils$FileState;

    return-object p0
.end method

.method public static fileState(Ljava/lang/String;)Lcom/edroid/common/utils/FileUtils$FileState;
    .locals 1

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->fileState(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$FileState;

    move-result-object p0

    return-object p0
.end method

.method public static fileToBytes(Ljava/io/File;)[B
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-static {p0, v0, v0}, Lcom/edroid/common/utils/FileUtils;->fileToBytes(Ljava/io/File;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static fileToBytes(Ljava/io/File;II)[B
    .locals 2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 342
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_1

    .line 344
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 345
    :cond_1
    :goto_0
    new-array p0, p2, [B

    .line 346
    invoke-virtual {v1, p0, p1, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 354
    :catch_1
    throw p0

    :catch_2
    move-object v1, v0

    .line 352
    :catch_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v0
.end method

.method public static fileToBytes(Ljava/lang/String;II)[B
    .locals 1

    .line 311
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/edroid/common/utils/FileUtils;->fileToBytes(Ljava/io/File;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 319
    invoke-static {p0}, Lcom/edroid/common/utils/FileUtils;->fileToBytes(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getDirPathInPrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastException()Ljava/lang/Exception;
    .locals 1

    .line 852
    sget-object v0, Lcom/edroid/common/utils/FileUtils;->exReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/edroid/common/utils/FileUtils;->exReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 705
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 706
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 707
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getROMLeft()J
    .locals 9

    .line 580
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 582
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 584
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 585
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    const-string v6, ""

    .line 587
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ROM Total:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v4, v4, v2

    invoke-static {v4, v5}, Lcom/edroid/common/utils/FileUtils;->coverSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Left:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v0, v0, v2

    .line 588
    invoke-static {v0, v1}, Lcom/edroid/common/utils/FileUtils;->coverSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getSDLeftSpace()J
    .locals 5

    .line 554
    invoke-static {}, Lcom/edroid/common/utils/FileUtils;->isSDMounted()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 557
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    .line 560
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    return-wide v1
.end method

.method public static getSDRoot()Ljava/lang/String;
    .locals 2

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/lib/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSDAvailable()Z
    .locals 3

    .line 540
    invoke-static {}, Lcom/edroid/common/utils/FileUtils;->isSDMounted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 543
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isSDAvailable(I)Z
    .locals 8

    .line 530
    invoke-static {}, Lcom/edroid/common/utils/FileUtils;->isSDAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 533
    :cond_0
    invoke-static {}, Lcom/edroid/common/utils/FileUtils;->getSDLeftSpace()J

    move-result-wide v2

    int-to-long v4, p0

    const-wide/16 v6, 0x400

    mul-long v4, v4, v6

    mul-long v4, v4, v6

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSDMounted()Z
    .locals 2

    .line 520
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static listPath(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    new-instance v1, Ljava/lang/SecurityManager;

    invoke-direct {v1}, Ljava/lang/SecurityManager;-><init>()V

    .line 731
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v1, p0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 734
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 735
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 736
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static printLastException()V
    .locals 1

    .line 842
    invoke-static {}, Lcom/edroid/common/utils/FileUtils;->getLastException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static reNamePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 718
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/edroid/common/utils/FileUtils$MyFileLock;->release()V

    :cond_0
    return-void
.end method

.method public static removeDir(Ljava/io/File;)I
    .locals 6

    .line 157
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 160
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 164
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    invoke-static {v4}, Lcom/edroid/common/utils/FileUtils;->removeDir(Ljava/io/File;)I

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    return v1
.end method

.method public static removeDir(Ljava/lang/String;)I
    .locals 1

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->removeDir(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method private static setLastException(Ljava/lang/Exception;)V
    .locals 1

    .line 848
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/edroid/common/utils/FileUtils;->exReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setPermissions(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x1

    .line 791
    invoke-static {p0, p1, v0, v0}, Lcom/edroid/common/utils/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 5

    :try_start_0
    const-string v0, "android.os.FileUtils"

    .line 798
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setPermissions"

    .line 799
    sget-object v2, Lcom/edroid/common/utils/FileUtils;->SIG_SET_PERMISSION:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 800
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 801
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    .locals 3

    .line 210
    invoke-static {p0}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/io/File;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 214
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const p0, 0x8000

    .line 215
    :try_start_1
    new-array p0, p0, [B

    .line 218
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 219
    invoke-virtual {v2, p0, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 228
    :catch_1
    throw p0

    :catch_2
    move-object v2, v1

    .line 226
    :catch_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return v0
.end method

.method public static streamToFile(Ljava/lang/String;Ljava/io/InputStream;Z)I
    .locals 1

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/edroid/common/utils/FileUtils;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I

    move-result p0

    return p0
.end method

.method public static stringToFile(Ljava/io/File;Ljava/lang/String;)I
    .locals 0

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/edroid/common/utils/FileUtils;->bytesToFile(Ljava/io/File;[B)I

    move-result p0

    return p0
.end method

.method public static tryFileLock(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$MyFileLock;
    .locals 0

    .line 691
    invoke-static {p0}, Lcom/edroid/common/utils/FileUtils$MyFileLock;->get(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$MyFileLock;

    move-result-object p0

    return-object p0
.end method

.method public static tryFileLock(Ljava/lang/String;)Lcom/edroid/common/utils/FileUtils$MyFileLock;
    .locals 1

    .line 681
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->tryFileLock(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$MyFileLock;

    move-result-object p0

    return-object p0
.end method
