.class Lcom/edroid/common/dl/Downloader$1;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/edroid/common/dl/Downloader;->callOnStart(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/edroid/common/dl/Downloader;

.field final synthetic val$start:J

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/edroid/common/dl/Downloader;JJ)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/edroid/common/dl/Downloader$1;->this$0:Lcom/edroid/common/dl/Downloader;

    iput-wide p2, p0, Lcom/edroid/common/dl/Downloader$1;->val$start:J

    iput-wide p4, p0, Lcom/edroid/common/dl/Downloader$1;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader$1;->this$0:Lcom/edroid/common/dl/Downloader;

    invoke-static {v0}, Lcom/edroid/common/dl/Downloader;->access$000(Lcom/edroid/common/dl/Downloader;)Lcom/edroid/common/dl/IDownloadListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/edroid/common/dl/Downloader$1;->val$start:J

    iget-wide v3, p0, Lcom/edroid/common/dl/Downloader$1;->val$total:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/edroid/common/dl/IDownloadListener;->onStart(JJ)V

    return-void
.end method
