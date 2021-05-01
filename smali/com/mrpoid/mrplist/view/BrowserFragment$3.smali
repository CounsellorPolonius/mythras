.class Lcom/mrpoid/mrplist/view/BrowserFragment$3;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment;
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

    .line 230
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "you click"

    const-string v0, "\u4e0b\u8f7d"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string p1, "you click"

    const-string v0, "\u5206\u4eab"

    .line 236
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string p1, "you click"

    const-string v0, "\u590d\u5236"

    .line 242
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$3;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->editMarket(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
