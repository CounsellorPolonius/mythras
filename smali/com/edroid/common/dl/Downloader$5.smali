.class Lcom/edroid/common/dl/Downloader$5;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/edroid/common/dl/Downloader;->callOnError(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/edroid/common/dl/Downloader;

.field final synthetic val$e2:Ljava/lang/Exception;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/edroid/common/dl/Downloader;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/edroid/common/dl/Downloader$5;->this$0:Lcom/edroid/common/dl/Downloader;

    iput-object p2, p0, Lcom/edroid/common/dl/Downloader$5;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/edroid/common/dl/Downloader$5;->val$e2:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/edroid/common/dl/Downloader$5;->this$0:Lcom/edroid/common/dl/Downloader;

    invoke-static {v0}, Lcom/edroid/common/dl/Downloader;->access$000(Lcom/edroid/common/dl/Downloader;)Lcom/edroid/common/dl/IDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/edroid/common/dl/Downloader$5;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/edroid/common/dl/Downloader$5;->val$e2:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/edroid/common/dl/IDownloadListener;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
