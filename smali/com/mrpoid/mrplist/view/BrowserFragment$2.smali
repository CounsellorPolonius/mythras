.class Lcom/mrpoid/mrplist/view/BrowserFragment$2;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment;->initMarkMenu()V
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

    .line 167
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 171
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-virtual {p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "bookmarks"

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p3, :cond_0

    .line 174
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p2, p2, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p3, p3, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/mrpoid/mrplist/view/BrowserFragment;->editMarket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    const/4 p4, 0x0

    if-ne p3, p2, :cond_1

    .line 176
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-virtual {p1, p4, p4}, Lcom/mrpoid/mrplist/view/BrowserFragment;->editMarket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p2, p2, Lcom/mrpoid/mrplist/view/BrowserFragment;->mWebView:Landroid/webkit/WebView;

    iget-object p5, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p5, p5, Lcom/mrpoid/mrplist/view/BrowserFragment;->markList:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 181
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$2;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/BrowserFragment;->markWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
