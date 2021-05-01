.class Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$2;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    iput-object p2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$DownloaderDialogFragment$2;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
