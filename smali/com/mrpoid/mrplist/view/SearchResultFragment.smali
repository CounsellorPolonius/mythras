.class public Lcom/mrpoid/mrplist/view/SearchResultFragment;
.super Lcom/mrpoid/mrplist/view/StorePageFragment;
.source "SearchResultFragment.java"


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLoad()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$AppItem;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/Store;->getInstance()Lcom/mrpoid/mrplist/moduls/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/SearchResultFragment;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/moduls/Store;->searchByLabel(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b003e

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->onResume()V

    .line 39
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "-----"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/SearchResultFragment;->mKey:Ljava/lang/String;

    return-void
.end method
