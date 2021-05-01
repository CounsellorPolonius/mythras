.class Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$1;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$1;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 640
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$1;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->downloader:Lcom/edroid/common/dl/Downloader;

    invoke-virtual {p1}, Lcom/edroid/common/dl/Downloader;->cancel()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 643
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$1;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
