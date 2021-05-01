.class public Lcom/edroid/common/dl/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_RETRY_TIMES:I = 0x5

.field private static final RW_BUF_SIZE:I = 0x8000

.field static final TAG:Ljava/lang/String; = "Downloader"

.field public static final log:Lcom/edroid/common/utils/Logger;


# instance fields
.field private async:Z

.field private canceled:Z

.field private fileSavePath:Ljava/lang/String;

.field private listener:Lcom/edroid/common/dl/IDownloadListener;

.field private mContext:Landroid/content/Context;

.field private mUserHandler:Landroid/os/Handler;

.field private retry:Z

.field private retryTimes:I

.field private urlString:Ljava/lang/String;

.field public wifiOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Downloader"

    .line 32
    invoke-static {v0}, Lcom/edroid/common/utils/Logger;->create(Ljava/lang/String;)Lcom/edroid/common/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/edroid/common/dl/IDownloadListener;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/edroid/common/dl/Downloader;->canceled:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/edroid/common/dl/Downloader;->async:Z

    .line 44
    iput v0, p0, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 50
    iput-boolean v1, p0, Lcom/edroid/common/dl/Downloader;->wifiOnly:Z

    .line 271
    iput-boolean v0, p0, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-nez p2, :cond_0

    .line 70
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file save path can\'t be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_0
    iput-object p2, p0, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/edroid/common/dl/Downloader;->urlString:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/edroid/common/dl/Downloader;->mContext:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/edroid/common/dl/IDownloadListener;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/edroid/common/dl/Downloader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/edroid/common/dl/IDownloadListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/edroid/common/dl/Downloader;)Lcom/edroid/common/dl/IDownloadListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    return-object p0
.end method

.method private callOnCancel()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v0}, Lcom/edroid/common/dl/IDownloadListener;->onCancel()V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/dl/Downloader$3;

    invoke-direct {v1, p0}, Lcom/edroid/common/dl/Downloader$3;-><init>(Lcom/edroid/common/dl/Downloader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private callOnError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 196
    :goto_0
    sget-object v0, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    invoke-virtual {v0, p1}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/edroid/common/dl/IDownloadListener;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/dl/Downloader$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/edroid/common/dl/Downloader$5;-><init>(Lcom/edroid/common/dl/Downloader;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private callOnFinish()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v0}, Lcom/edroid/common/dl/IDownloadListener;->onFinish()V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/dl/Downloader$4;

    invoke-direct {v1, p0}, Lcom/edroid/common/dl/Downloader$4;-><init>(Lcom/edroid/common/dl/Downloader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private callOnProgress(JB)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/edroid/common/dl/IDownloadListener;->onProgress(JB)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/dl/Downloader$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/edroid/common/dl/Downloader$2;-><init>(Lcom/edroid/common/dl/Downloader;JB)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private callOnStart(JJ)V
    .locals 8

    .line 134
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/edroid/common/dl/IDownloadListener;->onStart(JJ)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    new-instance v7, Lcom/edroid/common/dl/Downloader$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/edroid/common/dl/Downloader$1;-><init>(Lcom/edroid/common/dl/Downloader;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private precheckEnv()Z
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/edroid/common/utils/PhoneUtils;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "net not available!"

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    const-string v0, "net not available!"

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0, v0, v1}, Lcom/edroid/common/dl/Downloader;->callOnError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected callOnClose()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v0}, Lcom/edroid/common/dl/IDownloadListener;->onClose()V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/dl/Downloader$7;

    invoke-direct {v1, p0}, Lcom/edroid/common/dl/Downloader$7;-><init>(Lcom/edroid/common/dl/Downloader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected callOnWait()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v0}, Lcom/edroid/common/dl/IDownloadListener;->onWait()V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    new-instance v1, Lcom/edroid/common/dl/Downloader$6;

    invoke-direct {v1, p0}, Lcom/edroid/common/dl/Downloader$6;-><init>(Lcom/edroid/common/dl/Downloader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/edroid/common/dl/Downloader;->canceled:Z

    return-void
.end method

.method public getDownloadConnection(Ljava/lang/String;J)Ljava/net/HttpURLConnection;
    .locals 3

    .line 111
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const-string v0, "User-Agent"

    const-string v1, "NetFox"

    .line 117
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1388

    .line 118
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 119
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    .line 120
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Range"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileSavePath()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 25

    move-object/from16 v1, p0

    .line 281
    iget-object v2, v1, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 282
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    const-string v3, "file save path can\'t be null!"

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 287
    :cond_0
    iget-object v2, v1, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/lang/String;)V

    .line 290
    iget-boolean v2, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 292
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".lck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->tryFileLock(Ljava/io/File;)Lcom/edroid/common/utils/FileUtils$MyFileLock;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 297
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->add(Lcom/edroid/common/dl/Downloader;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 298
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u5df2\u7ecf\u5728\u4e0b\u8f7d \uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v2, v3

    :cond_3
    const/4 v4, 0x0

    .line 302
    iput-boolean v4, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 307
    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 309
    iget-object v8, v1, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v8, :cond_5

    .line 415
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 425
    :catch_1
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_4

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    if-ge v3, v5, :cond_4

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_0

    .line 430
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_0
    return-void

    .line 315
    :cond_5
    :try_start_3
    iget-object v8, v1, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v8}, Lcom/edroid/common/dl/IDownloadListener;->onExist()I

    move-result v8

    if-nez v8, :cond_7

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnFinish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 415
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 419
    :catch_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 425
    :catch_3
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_6

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    if-ge v3, v5, :cond_6

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_1

    .line 430
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_1
    return-void

    :cond_7
    if-ne v8, v6, :cond_9

    .line 321
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 322
    invoke-static {v7}, Lcom/edroid/common/utils/FileUtils;->removeDir(Ljava/io/File;)I

    goto :goto_2

    .line 324
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_9
    :goto_2
    const-wide/16 v11, 0x0

    goto :goto_3

    .line 327
    :cond_a
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".tmp"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 329
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 330
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    goto :goto_3

    .line 333
    :cond_b
    invoke-static {v7}, Lcom/edroid/common/utils/FileUtils;->removeDir(Ljava/io/File;)I

    goto :goto_2

    .line 338
    :goto_3
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v13, "rw"

    invoke-direct {v8, v7, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 339
    :try_start_7
    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 341
    iget-object v13, v1, Lcom/edroid/common/dl/Downloader;->urlString:Ljava/lang/String;

    invoke-virtual {v1, v13, v11, v12}, Lcom/edroid/common/dl/Downloader;->getDownloadConnection(Ljava/lang/String;J)Ljava/net/HttpURLConnection;

    move-result-object v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v13, :cond_e

    :try_start_8
    const-string v4, "open Connection FAIL!"

    .line 343
    invoke-direct {v1, v4, v3}, Lcom/edroid/common/dl/Downloader;->callOnError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 415
    :try_start_9
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 419
    :catch_4
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    if-eqz v13, :cond_c

    .line 423
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_c
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_d

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    if-ge v3, v5, :cond_d

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_4

    .line 430
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    move-object v7, v3

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move-object v7, v3

    goto/16 :goto_c

    .line 347
    :cond_e
    :try_start_b
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    int-to-long v14, v14

    const-wide/16 v16, -0x1

    cmp-long v18, v14, v16

    if-nez v18, :cond_11

    const-string v4, "get ContentLength FAIL!"

    .line 349
    invoke-direct {v1, v4, v3}, Lcom/edroid/common/dl/Downloader;->callOnError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 415
    :try_start_c
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 419
    :catch_7
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    if-eqz v13, :cond_f

    .line 423
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_f
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_10

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    if-ge v3, v5, :cond_10

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_5

    .line 430
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_5
    return-void

    :cond_11
    const/16 v16, 0x0

    add-long v9, v11, v14

    move-object/from16 v21, v7

    .line 353
    :try_start_e
    invoke-static {}, Lcom/edroid/common/utils/FileUtils;->getSDLeftSpace()J

    move-result-wide v6

    const-wide/32 v16, 0x100000

    add-long v22, v14, v16

    cmp-long v16, v22, v6

    if-lez v16, :cond_14

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sd not enough! need:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " left:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/edroid/common/dl/Downloader;->callOnError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 415
    :try_start_f
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 419
    :catch_9
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :catch_a
    if-eqz v13, :cond_12

    .line 423
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_12
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_13

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    if-ge v3, v5, :cond_13

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_6

    .line 430
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_6
    return-void

    .line 359
    :cond_14
    :try_start_11
    iget-object v6, v1, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    if-eqz v6, :cond_17

    .line 360
    iget-object v6, v1, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    invoke-interface {v6, v9, v10, v14, v15}, Lcom/edroid/common/dl/IDownloadListener;->onLengthGet(JJ)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_17

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnCancel()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 415
    :try_start_12
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 419
    :catch_b
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    :catch_c
    if-eqz v13, :cond_15

    .line 423
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_15
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_16

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    if-ge v3, v5, :cond_16

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_7

    .line 430
    :cond_16
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_7
    return-void

    :cond_17
    const v6, 0x8000

    .line 368
    :try_start_14
    new-array v6, v6, [B

    .line 371
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 373
    :try_start_15
    invoke-direct {v1, v11, v12, v9, v10}, Lcom/edroid/common/dl/Downloader;->callOnStart(JJ)V

    .line 374
    sget-object v3, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "begin from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    const-wide/16 v19, 0x0

    .line 379
    :goto_8
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v14, -0x1

    if-ne v3, v14, :cond_1b

    .line 381
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/edroid/common/dl/Downloader;->fileSavePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, v21

    invoke-virtual {v14, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnFinish()V

    goto :goto_9

    :cond_18
    const-string v3, "dl suc, but tmp rename fail!"

    .line 384
    new-instance v4, Ljava/lang/Exception;

    const-string v6, "dl suc, but tmp rename fail!"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/edroid/common/dl/Downloader;->callOnError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_12
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 415
    :goto_9
    :try_start_16
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    .line 419
    :catch_d
    :try_start_17
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    :catch_e
    if-eqz v13, :cond_19

    .line 423
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_19
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_1a

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    if-ge v3, v5, :cond_1a

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_a

    .line 430
    :cond_1a
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_a
    return-void

    :cond_1b
    move-object/from16 v14, v21

    .line 389
    :try_start_18
    invoke-virtual {v8, v6, v4, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v3

    move-object/from16 v24, v14

    add-long v14, v11, v4

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v11, v3, v19

    const-wide/16 v3, 0x3e8

    cmp-long v5, v11, v3

    if-lez v5, :cond_1c

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-float v5, v14

    long-to-float v11, v9

    div-float/2addr v5, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float v5, v5, v11

    float-to-int v5, v5

    int-to-byte v5, v5

    .line 394
    invoke-direct {v1, v14, v15, v5}, Lcom/edroid/common/dl/Downloader;->callOnProgress(JB)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-wide/from16 v19, v3

    :cond_1c
    const-wide/16 v3, 0xa

    .line 399
    :try_start_19
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 402
    :catch_f
    :try_start_1a
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->canceled:Z

    if-eqz v3, :cond_1f

    .line 404
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->canceled:Z

    if-eqz v3, :cond_1d

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnCancel()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 415
    :cond_1d
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    .line 419
    :catch_10
    :try_start_1c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11

    :catch_11
    if-eqz v13, :cond_1e

    .line 423
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_1e
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_22

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_22

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :cond_1f
    move-wide v11, v14

    move-object/from16 v21, v24

    const/4 v4, 0x0

    const/4 v5, 0x5

    goto/16 :goto_8

    :catch_12
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v7, v3

    move-object v13, v7

    goto :goto_b

    :catch_13
    move-exception v0

    move-object v7, v3

    move-object v13, v7

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    move-object v13, v8

    :goto_b
    move-object v3, v0

    goto/16 :goto_f

    :catch_14
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    move-object v13, v8

    :goto_c
    move-object v3, v0

    .line 408
    :try_start_1d
    iget-object v4, v1, Lcom/edroid/common/dl/Downloader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/edroid/common/utils/PhoneUtils;->isWifi(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_20

    instance-of v4, v3, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    .line 409
    iput-boolean v4, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    .line 412
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/edroid/common/dl/Downloader;->callOnError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 415
    :try_start_1e
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_15

    .line 419
    :catch_15
    :try_start_1f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_16

    :catch_16
    if-eqz v13, :cond_21

    .line 423
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_21
    iget-boolean v3, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v3, :cond_22

    iget v3, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_22

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d
    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_e

    .line 430
    :cond_22
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_e
    return-void

    :catchall_3
    move-exception v0

    goto :goto_b

    .line 415
    :goto_f
    :try_start_20
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_17

    .line 419
    :catch_17
    :try_start_21
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_18

    :catch_18
    if-eqz v13, :cond_23

    .line 423
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_23
    iget-boolean v4, v1, Lcom/edroid/common/dl/Downloader;->retry:Z

    if-eqz v4, :cond_24

    iget v4, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_24

    .line 426
    iget v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    .line 427
    sget-object v2, Lcom/edroid/common/dl/Downloader;->log:Lcom/edroid/common/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u91cd\u8bd5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/edroid/common/dl/Downloader;->retryTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->run()V

    goto :goto_10

    .line 430
    :cond_24
    invoke-static/range {p0 .. p0}, Lcom/edroid/common/dl/DownloadManager;->remove(Lcom/edroid/common/dl/Downloader;)V

    .line 431
    invoke-static {v2}, Lcom/edroid/common/utils/FileUtils;->releaseFileLock(Lcom/edroid/common/utils/FileUtils$MyFileLock;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/edroid/common/dl/Downloader;->callOnClose()V

    :goto_10
    throw v3
.end method

.method public setAsync(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/edroid/common/dl/Downloader;->async:Z

    return-void
.end method

.method public setDownloadListener(Lcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/edroid/common/dl/Downloader;->listener:Lcom/edroid/common/dl/IDownloadListener;

    return-object p0
.end method

.method public setUserHandler(Landroid/os/Handler;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/edroid/common/dl/Downloader;->mUserHandler:Landroid/os/Handler;

    return-void
.end method

.method public start()V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/edroid/common/dl/Downloader;->precheckEnv()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcom/edroid/common/dl/Downloader;->async:Z

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/edroid/common/dl/Downloader;->run()V

    :goto_0
    return-void
.end method

.method public startAsync()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/edroid/common/dl/Downloader;->precheckEnv()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
