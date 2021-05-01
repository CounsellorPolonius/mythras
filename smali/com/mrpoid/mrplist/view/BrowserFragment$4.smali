.class Lcom/mrpoid/mrplist/view/BrowserFragment$4;
.super Landroid/webkit/WebChromeClient;
.source "BrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/BrowserFragment;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/BrowserFragment;->mBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/BrowserFragment;->mBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 279
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->access$000(Lcom/mrpoid/mrplist/view/BrowserFragment;)Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->access$000(Lcom/mrpoid/mrplist/view/BrowserFragment;)Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-static {v0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->access$102(Lcom/mrpoid/mrplist/view/BrowserFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 315
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 316
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    const-string v1, "File Chooser"

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 302
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-static {p2, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->access$102(Lcom/mrpoid/mrplist/view/BrowserFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 303
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    .line 304
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "image/*"

    .line 305
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    const-string v0, "File Chooser"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/mrpoid/mrplist/view/BrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/mrpoid/mrplist/view/BrowserFragment$4;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
