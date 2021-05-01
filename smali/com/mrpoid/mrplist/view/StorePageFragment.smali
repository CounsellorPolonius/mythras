.class public Lcom/mrpoid/mrplist/view/StorePageFragment;
.super Lcom/mrpoid/mrplist/view/RefreshListFragment;
.source "StorePageFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;,
        Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;

.field loadMore:Z

.field noMore:Z

.field typeId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/RefreshListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLoad()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$AppItem;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/Store;->getInstance()Lcom/mrpoid/mrplist/moduls/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->adapter:Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;

    invoke-virtual {v1}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->typeId:I

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3, v2}, Lcom/mrpoid/mrplist/moduls/Store;->loadApp(III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method loadMore()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->noMore:Z

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/edroid/common/utils/WorkThread;->getDefault()Lcom/edroid/common/utils/WorkThread;

    move-result-object v0

    new-instance v1, Lcom/mrpoid/mrplist/view/StorePageFragment$1;

    invoke-direct {v1, p0}, Lcom/mrpoid/mrplist/view/StorePageFragment$1;-><init>(Lcom/mrpoid/mrplist/view/StorePageFragment;)V

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/WorkThread;->postTask(Lcom/edroid/common/utils/WorkThread$ITask;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/RefreshListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance p1, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->adapter:Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->adapter:Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;

    invoke-virtual {p1, p3}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    move-result-object p1

    .line 190
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->down(Landroid/support/v4/app/FragmentManager;Lcom/mrpoid/mrplist/moduls/Store$AppItem;)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->adapter:Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->clearData()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->noMore:Z

    .line 72
    iput-boolean v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->loadMore:Z

    .line 73
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->loadMore()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    if-lt p2, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 114
    :goto_0
    iput-boolean p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->loadMore:Z

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 105
    iget-boolean p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->loadMore:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->loadMore()V

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->loadMore:Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-super {p0, p1, p2}, Lcom/mrpoid/mrplist/view/RefreshListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->adapter:Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->setRefreshing(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->onRefresh()V

    return-void
.end method

.method public setTypeId(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment;->typeId:I

    return-void
.end method
