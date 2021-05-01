.class public final Lcom/edroid/common/utils/FileUtils$MyFileLock;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyFileLock"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private lock:Ljava/nio/channels/FileLock;

.field private raf:Ljava/io/FileOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;)V
    .locals 0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-object p1, p0, Lcom/edroid/common/utils/FileUtils$MyFileLock;->file:Ljava/io/File;

    .line 625
    iput-object p2, p0, Lcom/edroid/common/utils/FileUtils$MyFileLock;->raf:Ljava/io/FileOutputStream;

    .line 626
    iput-object p3, p0, Lcom/edroid/common/utils/FileUtils$MyFileLock;->lock:Ljava/nio/channels/FileLock;

    return-void
.end method

.method public static get(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$MyFileLock;
    .locals 3

    .line 652
    :try_start_0
    invoke-static {p0}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/io/File;)V

    .line 653
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 658
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 659
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    new-instance v2, Lcom/edroid/common/utils/FileUtils$MyFileLock;

    invoke-direct {v2, p0, v0, v1}, Lcom/edroid/common/utils/FileUtils$MyFileLock;-><init>(Ljava/io/File;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 664
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 668
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/edroid/common/utils/FileUtils$MyFileLock;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/edroid/common/utils/FileUtils$MyFileLock;->raf:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 641
    :catch_1
    iget-object v0, p0, Lcom/edroid/common/utils/FileUtils$MyFileLock;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/edroid/common/utils/FileUtils$MyFileLock;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
