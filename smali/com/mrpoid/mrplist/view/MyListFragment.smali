.class public abstract Lcom/mrpoid/mrplist/view/MyListFragment;
.super Lcom/mrpoid/mrplist/view/RefreshListFragment;
.source "MyListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private listId:I

.field protected mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

.field private position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/RefreshListFragment;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->setListId(I)V

    return-void
.end method


# virtual methods
.method delete(I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/MpFile;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->remove(I)V

    :cond_0
    return-void
.end method

.method public getListId()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->listId:I

    return v0
.end method

.method public getPressedPosition()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->position:I

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    iget v1, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->listId:I

    if-eq v0, v1, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/RefreshListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    iget v1, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->position:I

    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/MpFile;

    move-result-object v0

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09008c

    if-ne v1, v2, :cond_1

    .line 116
    iget p1, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->position:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->delete(I)V

    goto/16 :goto_0

    .line 117
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09007f

    if-ne v1, v2, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 119
    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getTtile()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mrpoid/mrplist/moduls/ShortcutUtils;->getAppIcon(Landroid/content/Context;)I

    move-result v2

    .line 121
    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->toFile()Ljava/io/File;

    move-result-object v0

    .line 118
    invoke-static {p1, v1, v2, v0}, Lcom/mrpoid/mrplist/moduls/ShortcutUtils;->createShortCut(Landroid/app/Activity;Ljava/lang/String;ILjava/io/File;)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09007d

    if-ne v1, v2, :cond_3

    .line 123
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/FavMgr;->getInstance()Lcom/mrpoid/mrplist/moduls/FavMgr;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09008e

    if-ne v1, v2, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->open(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090099

    if-ne v1, v2, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->open(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090096

    if-ne v1, v2, :cond_6

    .line 129
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/moduls/MpFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mrpoid/mrplist/view/MrpInfoDialogFragment;->open(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 131
    :cond_6
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/RefreshListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/view/RefreshListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance p1, Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/MyListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 94
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    iget p3, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->position:I

    invoke-virtual {p2, p3}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/MpFile;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Lcom/mrpoid/mrplist/moduls/MpFile;->isFile()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 97
    iget p2, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->listId:I

    const p3, 0x7f09008c

    const v0, 0x7f0d00a1

    const/4 v1, 0x0

    invoke-interface {p1, p2, p3, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 98
    iget p2, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->listId:I

    const p3, 0x7f09008e

    const v0, 0x7f0d00a4

    invoke-interface {p1, p2, p3, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 99
    iget p2, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->listId:I

    const p3, 0x7f090099

    const v0, 0x7f0d00b2

    invoke-interface {p1, p2, p3, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 100
    iget p2, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->listId:I

    const p3, 0x7f090096

    const/4 v0, 0x3

    const v2, 0x7f0d00c0

    invoke-interface {p1, p2, p3, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 101
    iget p2, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->listId:I

    const p3, 0x7f09007f

    const v0, 0x7f0d0044

    invoke-interface {p1, p2, p3, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/mrpoid/mrplist/view/RefreshListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b003d

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 72
    iput p3, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->position:I

    const/4 p1, 0x0

    return p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    invoke-virtual {p1, p3}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/MpFile;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/mrpoid/mrplist/moduls/MpFile;->getType()Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object p2

    sget-object p3, Lcom/mrpoid/mrplist/moduls/FileType;->MRP:Lcom/mrpoid/mrplist/moduls/FileType;

    if-ne p2, p3, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/mrpoid/mrplist/moduls/MpFile;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/mrpoid/mrplist/moduls/MpFile;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->addToFavorate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2}, Lcom/mrpoid/mrplist/view/RefreshListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->mAdapter:Lcom/mrpoid/mrplist/moduls/MpListAdapter;

    invoke-virtual {p0, p2}, Lcom/mrpoid/mrplist/view/MyListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    .line 58
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/mrpoid/mrplist/view/MyListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/MyListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 66
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public setListId(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/mrpoid/mrplist/view/MyListFragment;->listId:I

    return-void
.end method
