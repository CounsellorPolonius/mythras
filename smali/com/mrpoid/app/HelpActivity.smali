.class public Lcom/mrpoid/app/HelpActivity;
.super Lcom/mrpoid/app/BaseActivity;
.source "HelpActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mrpoid/app/BaseActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mrpoid/app/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/mrpoid/app/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/mrpoid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    .line 32
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mrpoid/app/HelpActivity$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/app/HelpActivity$1;-><init>(Lcom/mrpoid/app/HelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/mrpoid/app/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mrpoid/app/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mrpoid/app/HelpActivity$2;

    invoke-direct {v0, p0}, Lcom/mrpoid/app/HelpActivity$2;-><init>(Lcom/mrpoid/app/HelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "\u524d\u8fdb"

    const/4 v1, 0x0

    .line 67
    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "\u540e\u9000"

    const/4 v2, 0x1

    .line 68
    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "\u5237\u65b0"

    const/4 v3, 0x2

    .line 69
    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "\u9000\u51fa"

    const/4 v3, 0x3

    .line 70
    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 101
    invoke-super {p0, p1}, Lcom/mrpoid/app/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/mrpoid/app/HelpActivity;->finish()V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/mrpoid/app/HelpActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/app/HelpActivity;->finish()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
