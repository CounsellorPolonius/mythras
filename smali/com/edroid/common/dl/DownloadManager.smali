.class public final Lcom/edroid/common/dl/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field public static MAX_DOWNLOAD_TASK:I = -0x1

.field private static final hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/edroid/common/dl/Downloader;",
            ">;"
        }
    .end annotation
.end field

.field static final mSync:Ljava/lang/Object;

.field private static final queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/edroid/common/dl/Downloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/edroid/common/dl/DownloadManager;->mSync:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/edroid/common/dl/DownloadManager;->queue:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static add(Lcom/edroid/common/dl/Downloader;)Z
    .locals 3

    .line 30
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/edroid/common/dl/Downloader;->getFileSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 32
    monitor-exit v0

    return p0

    .line 34
    :cond_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/edroid/common/dl/Downloader;->getFileSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 35
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static addToQueue(Lcom/edroid/common/dl/Downloader;)V
    .locals 2

    .line 106
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static checkQueue()V
    .locals 2

    .line 128
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/edroid/common/dl/DownloadManager;->runningCount()I

    move-result v0

    sget v1, Lcom/edroid/common/dl/DownloadManager;->MAX_DOWNLOAD_TASK:I

    if-ge v0, v1, :cond_0

    .line 129
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->queue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/edroid/common/dl/Downloader;

    invoke-virtual {v1}, Lcom/edroid/common/dl/Downloader;->start()V

    .line 131
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected static get(Ljava/lang/String;)Lcom/edroid/common/dl/Downloader;
    .locals 2

    .line 40
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/edroid/common/dl/Downloader;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static has(Ljava/lang/String;)Z
    .locals 2

    .line 71
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isFileDownloadIng(Ljava/lang/String;)Z
    .locals 3

    .line 88
    invoke-static {p0}, Lcom/edroid/common/dl/DownloadManager;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 91
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".lck"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->tryFileLock(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$MyFileLock;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 95
    :cond_1
    invoke-static {p0}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isIdle()Z
    .locals 2

    .line 65
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isInQueue(Ljava/lang/String;)Z
    .locals 2

    .line 118
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/edroid/common/dl/Downloader;

    .line 120
    invoke-virtual {v1}, Lcom/edroid/common/dl/Downloader;->getFileSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isTempDownload(Ljava/lang/String;)Z
    .locals 2

    .line 78
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method protected static remove(Lcom/edroid/common/dl/Downloader;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/edroid/common/dl/Downloader;->getFileSavePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Lcom/edroid/common/dl/DownloadManager;->checkQueue()V

    return-void

    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static runningCount()I
    .locals 1

    .line 53
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;ZLcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;
    .locals 7

    .line 183
    invoke-static {p1}, Lcom/edroid/common/dl/DownloadManager;->isInQueue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/edroid/common/dl/DownloadManager;->get(Ljava/lang/String;)Lcom/edroid/common/dl/Downloader;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 192
    :cond_1
    new-instance v0, Lcom/edroid/common/dl/Downloader;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/edroid/common/dl/Downloader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/edroid/common/dl/IDownloadListener;)V

    .line 193
    invoke-virtual {v0, p4}, Lcom/edroid/common/dl/Downloader;->setAsync(Z)V

    .line 195
    sget p0, Lcom/edroid/common/dl/DownloadManager;->MAX_DOWNLOAD_TASK:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_3

    invoke-static {}, Lcom/edroid/common/dl/DownloadManager;->runningCount()I

    move-result p0

    sget p1, Lcom/edroid/common/dl/DownloadManager;->MAX_DOWNLOAD_TASK:I

    if-ge p0, p1, :cond_2

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v0}, Lcom/edroid/common/dl/Downloader;->callOnWait()V

    .line 199
    invoke-static {v0}, Lcom/edroid/common/dl/DownloadManager;->addToQueue(Lcom/edroid/common/dl/Downloader;)V

    goto :goto_1

    .line 196
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/edroid/common/dl/Downloader;->start()V

    :goto_1
    return-object v0
.end method

.method public static startAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 143
    invoke-static/range {v0 .. v5}, Lcom/edroid/common/dl/DownloadManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;ZLcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;

    move-result-object p0

    return-object p0
.end method

.method public static startAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/edroid/common/dl/DownloadManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;ZLcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;

    move-result-object p0

    return-object p0
.end method

.method public static startSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 156
    invoke-static/range {v0 .. v5}, Lcom/edroid/common/dl/DownloadManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;ZLcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;

    move-result-object p0

    return-object p0
.end method

.method public static startSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 149
    invoke-static/range {v0 .. v5}, Lcom/edroid/common/dl/DownloadManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;ZLcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;

    move-result-object p0

    return-object p0
.end method

.method public static stopAll()V
    .locals 3

    .line 57
    sget-object v0, Lcom/edroid/common/dl/DownloadManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/edroid/common/dl/DownloadManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/edroid/common/dl/Downloader;

    invoke-virtual {v2}, Lcom/edroid/common/dl/Downloader;->cancel()V

    goto :goto_0

    .line 61
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
