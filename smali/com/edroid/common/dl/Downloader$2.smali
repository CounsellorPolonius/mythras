.class Lcom/edroid/common/dl/Downloader$2;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/edroid/common/dl/Downloader;->callOnProgress(JB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/edroid/common/dl/Downloader;

.field final synthetic val$cur:J

.field final synthetic val$prog:B


# direct methods
.method constructor <init>(Lcom/edroid/common/dl/Downloader;JB)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/edroid/common/dl/Downloader$2;->this$0:Lcom/edroid/common/dl/Downloader;

    iput-wide p2, p0, Lcom/edroid/common/dl/Downloader$2;->val$cur:J

    iput-byte p4, p0, Lcom/edroid/common/dl/Downloader$2;->val$prog:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader$2;->this$0:Lcom/edroid/common/dl/Downloader;

    invoke-static {v0}, Lcom/edroid/common/dl/Downloader;->access$000(Lcom/edroid/common/dl/Downloader;)Lcom/edroid/common/dl/IDownloadListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/edroid/common/dl/Downloader$2;->val$cur:J

    iget-byte v3, p0, Lcom/edroid/common/dl/Downloader$2;->val$prog:B

    invoke-interface {v0, v1, v2, v3}, Lcom/edroid/common/dl/IDownloadListener;->onProgress(JB)V

    return-void
.end method
