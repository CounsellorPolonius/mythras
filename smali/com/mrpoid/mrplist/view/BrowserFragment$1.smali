.class Lcom/mrpoid/mrplist/view/BrowserFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "BrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment;->initMarkMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/BrowserFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$1;->this$0:Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 162
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const p3, -0xf0f10

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method
