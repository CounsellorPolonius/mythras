.class Lcom/mrpoid/mrplist/view/BrowserFragment$5;
.super Landroid/webkit/WebViewClient;
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

    .line 324
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$5;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 327
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$5;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->access$000(Lcom/mrpoid/mrplist/view/BrowserFragment;)Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$5;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->access$000(Lcom/mrpoid/mrplist/view/BrowserFragment;)Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
