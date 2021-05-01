.class public Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloaderDialogFragment"
.end annotation


# instance fields
.field downloader:Lcom/edroid/common/dl/Downloader;

.field final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mDialog:Landroid/app/ProgressDialog;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 629
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 635
    new-instance v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$1;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;)V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$300(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 629
    invoke-direct {p0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$2;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 660
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 662
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 709
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 711
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f0d004c

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 712
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 713
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 714
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 715
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 716
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$4;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 724
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;

    invoke-direct {v1, p0, p3}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;Ljava/lang/String;)V

    invoke-static {p1, p3, p2, v0, v1}, Lcom/edroid/common/dl/DownloadManager;->startAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/edroid/common/dl/IDownloadListener;)Lcom/edroid/common/dl/Downloader;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->downloader:Lcom/edroid/common/dl/Downloader;

    return-void
.end method
