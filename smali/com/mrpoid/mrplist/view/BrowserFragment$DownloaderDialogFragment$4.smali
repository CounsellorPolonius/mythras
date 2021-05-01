.class Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$4;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 716
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 720
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method
