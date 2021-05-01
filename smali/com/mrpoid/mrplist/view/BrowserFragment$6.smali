.class Lcom/mrpoid/mrplist/view/BrowserFragment$6;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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

    .line 335
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$6;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    const-string p3, "long click"

    const-string v0, "true"

    .line 339
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p2

    .line 342
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_1

    const/4 v2, 0x6

    if-eq p3, v2, :cond_1

    const/4 v2, 0x7

    if-eq p3, v2, :cond_1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-ne p3, v2, :cond_2

    const-string p3, "image type"

    const-string v2, "ture"

    .line 370
    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v2, "OPEN"

    .line 372
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 373
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const-string v2, "\u56fe\u7247"

    .line 374
    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 375
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 376
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    .line 348
    :cond_1
    :goto_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "extrea"

    .line 351
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x3eb

    const-string v0, "\u5206\u4eab"

    .line 354
    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    .line 355
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p2

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$6;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment;->webMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 356
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 p2, 0x3ea

    const-string v0, "\u590d\u5236"

    .line 358
    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    .line 359
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p2

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$6;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment;->webMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 360
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 p2, 0x3ec

    const-string v0, "\u4e0b\u8f7d"

    .line 362
    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    .line 363
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p2

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$6;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/BrowserFragment;->webMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 364
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 p2, 0x3e9

    const-string v0, "\u589e\u52a0\u5230\u4e66\u7b7e"

    .line 366
    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 367
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$6;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p2, p2, Lcom/mrpoid/mrplist/view/BrowserFragment;->webMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 368
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method
