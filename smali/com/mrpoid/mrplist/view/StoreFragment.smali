.class public Lcom/mrpoid/mrplist/view/StoreFragment;
.super Landroid/support/v4/app/Fragment;
.source "StoreFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnCloseListener;
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# instance fields
.field pageTitles:[Ljava/lang/String;

.field pager:Landroid/support/v4/view/ViewPager;

.field searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

.field searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/StoreFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onClose()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StoreFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c0004

    .line 47
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0c0003

    .line 48
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090092

    .line 50
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SearchView;

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchView:Landroid/support/v7/widget/SearchView;

    .line 52
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchView:Landroid/support/v7/widget/SearchView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 53
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchView:Landroid/support/v7/widget/SearchView;

    const-string p2, "\u5e94\u7528\u540d\u5173\u952e\u5b57"

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V

    .line 56
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0b003f

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 39
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    .line 41
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/StoreFragment;->showSearchFragment(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030013

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->pageTitles:[Ljava/lang/String;

    const p2, 0x7f0900b5

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 101
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/mrpoid/mrplist/view/StoreFragment$1;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StoreFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mrpoid/mrplist/view/StoreFragment$1;-><init>(Lcom/mrpoid/mrplist/view/StoreFragment;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const p2, 0x7f0900e2

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    const p2, 0x7f0b005e

    const v0, 0x1020014

    .line 122
    invoke-virtual {p1, p2, v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setCustomTabView(II)V

    const/4 p2, 0x1

    .line 123
    new-array v0, p2, [I

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 124
    invoke-virtual {p1, p2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 125
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method showSearchFragment(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/mrpoid/mrplist/view/SearchResultFragment;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/SearchResultFragment;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/SearchResultFragment;->setKey(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    invoke-virtual {p1}, Lcom/mrpoid/mrplist/view/SearchResultFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    invoke-virtual {p1}, Lcom/mrpoid/mrplist/view/SearchResultFragment;->refresh()V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StoreFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090039

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/StoreFragment;->searchResultFragment:Lcom/mrpoid/mrplist/view/SearchResultFragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method
