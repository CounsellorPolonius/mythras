.class public abstract Lcom/mrpoid/mrplist/view/RefreshListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "RefreshListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private layout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b003d

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0900ed

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/RefreshListFragment;->layout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 39
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/RefreshListFragment;->layout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 40
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/RefreshListFragment;->layout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 41
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/RefreshListFragment;->layout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setSoundEffectsEnabled(Z)V

    .line 42
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/RefreshListFragment;->layout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 p2, 0x4

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void

    :array_0
    .array-data 4
        0x7f060032
        0x7f060033
        0x7f060034
        0x7f060035
    .end array-data
.end method

.method public setRefreshing(Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/RefreshListFragment;->layout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
