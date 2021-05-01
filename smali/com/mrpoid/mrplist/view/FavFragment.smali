.class public Lcom/mrpoid/mrplist/view/FavFragment;
.super Lcom/mrpoid/mrplist/view/MyListFragment;
.source "FavFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field fmg:Lcom/mrpoid/mrplist/moduls/FavMgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e9

    .line 25
    invoke-direct {p0, v0}, Lcom/mrpoid/mrplist/view/MyListFragment;-><init>(I)V

    .line 22
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/FavMgr;->getInstance()Lcom/mrpoid/mrplist/moduls/FavMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/FavFragment;->fmg:Lcom/mrpoid/mrplist/moduls/FavMgr;

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09008c

    if-ne v0, v1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FavFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FavFragment;->getPressedPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->remove(I)V

    .line 63
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/FavMgr;->getInstance()Lcom/mrpoid/mrplist/moduls/FavMgr;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FavFragment;->getPressedPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->remove(I)V

    const/4 p1, 0x1

    return p1

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/FavFragment;->fmg:Lcom/mrpoid/mrplist/moduls/FavMgr;

    invoke-virtual {p1}, Lcom/mrpoid/mrplist/moduls/FavMgr;->read()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 48
    invoke-super/range {p0 .. p5}, Lcom/mrpoid/mrplist/view/MyListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 50
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/mrpoid/mrplist/view/FavFragment$1;

    invoke-direct {p2, p0, p3}, Lcom/mrpoid/mrplist/view/FavFragment$1;-><init>(Lcom/mrpoid/mrplist/view/FavFragment;I)V

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FavFragment;->refreshList()V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/view/FavFragment;->setRefreshing(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/FavFragment;->refreshList()V

    return-void
.end method

.method refreshList()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FavFragment;->fmg:Lcom/mrpoid/mrplist/moduls/FavMgr;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->getAll()Ljava/util/List;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/FavFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    invoke-virtual {v1, v0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
