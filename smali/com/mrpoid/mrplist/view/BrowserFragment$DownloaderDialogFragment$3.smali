.class Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;
.super Lcom/edroid/common/dl/DownloadListener;
.source "BrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iput-object p2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/edroid/common/dl/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 4

    .line 694
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210!"

    invoke-static {v0, v1}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->access$300(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->val$savePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->access$400(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JB)V
    .locals 3

    .line 678
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 680
    iget-object p3, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object p3, p3, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object p3, p3, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 681
    iget-object p3, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object p3, p3, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onStart(JJ)V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    long-to-int p3, p3

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 672
    iget-object p3, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iget-object p3, p3, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method
