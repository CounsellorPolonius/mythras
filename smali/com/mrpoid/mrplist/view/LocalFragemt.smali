.class public Lcom/mrpoid/mrplist/view/LocalFragemt;
.super Landroid/support/v4/app/Fragment;
.source "LocalFragemt.java"


# instance fields
.field private favoriteFmg:Lcom/mrpoid/mrplist/view/FavFragment;

.field private localmrpFragment:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private pageTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Lcom/mrpoid/mrplist/view/FavFragment;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/FavFragment;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->favoriteFmg:Lcom/mrpoid/mrplist/view/FavFragment;

    .line 28
    new-instance v0, Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->localmrpFragment:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/mrplist/view/LocalFragemt;)Lcom/mrpoid/mrplist/view/FavFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->favoriteFmg:Lcom/mrpoid/mrplist/view/FavFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mrpoid/mrplist/view/LocalFragemt;)Lcom/mrpoid/mrplist/view/LocalMrpFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->localmrpFragment:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mrpoid/mrplist/view/LocalFragemt;)[Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->pageTitles:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/LocalFragemt;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 39
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c0003

    .line 40
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

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

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
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

    .line 55
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/LocalFragemt;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f03000e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->pageTitles:[Ljava/lang/String;

    const p2, 0x7f0900b5

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->mPager:Landroid/support/v4/view/ViewPager;

    .line 59
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/mrpoid/mrplist/view/LocalFragemt$1;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/LocalFragemt;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mrpoid/mrplist/view/LocalFragemt$1;-><init>(Lcom/mrpoid/mrplist/view/LocalFragemt;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const p2, 0x7f0900e2

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    const p2, 0x7f0b005e

    const v0, 0x1020014

    .line 84
    invoke-virtual {p1, p2, v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setCustomTabView(II)V

    const/4 p2, 0x1

    .line 85
    new-array v0, p2, [I

    const/4 v1, 0x0

    const v2, -0xf000001

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 86
    invoke-virtual {p1, p2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 87
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public setScnsize(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/LocalFragemt;->localmrpFragment:Lcom/mrpoid/mrplist/view/LocalMrpFragment;

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/LocalMrpFragment;->setScnsize(Ljava/lang/String;)V

    return-void
.end method
