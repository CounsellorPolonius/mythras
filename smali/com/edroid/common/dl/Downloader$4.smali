.class Lcom/edroid/common/dl/Downloader$4;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/edroid/common/dl/Downloader;->callOnFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/edroid/common/dl/Downloader;


# direct methods
.method constructor <init>(Lcom/edroid/common/dl/Downloader;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/edroid/common/dl/Downloader$4;->this$0:Lcom/edroid/common/dl/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader$4;->this$0:Lcom/edroid/common/dl/Downloader;

    invoke-static {v0}, Lcom/edroid/common/dl/Downloader;->access$000(Lcom/edroid/common/dl/Downloader;)Lcom/edroid/common/dl/IDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/edroid/common/dl/IDownloadListener;->onFinish()V

    return-void
.end method
