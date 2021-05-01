.class public Lcom/mrpoid/mrplist/view/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;,
        Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private mContentDescriptions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDistributeEvenly:Z

.field private final mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTitleOffset:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    const/4 p2, 0x0

    .line 92
    invoke-virtual {p0, p2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 94
    invoke-virtual {p0, p2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->setFillViewport(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTitleOffset:I

    .line 98
    new-instance p2, Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    invoke-direct {p2, p1}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    .line 99
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-virtual {p0, p1, p2, p3}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mrpoid/mrplist/view/SlidingTabLayout;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private populateTabStrip()V
    .locals 9

    .line 186
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;-><init>(Lcom/mrpoid/mrplist/view/SlidingTabLayout;Lcom/mrpoid/mrplist/view/SlidingTabLayout$1;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 189
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 193
    iget v5, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v5, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v7, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 197
    iget v6, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v5, v2

    move-object v6, v5

    :goto_1
    if-nez v5, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    :cond_1
    if-nez v6, :cond_2

    .line 204
    const-class v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 205
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    .line 208
    :cond_2
    iget-boolean v7, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mDistributeEvenly:Z

    if-eqz v7, :cond_3

    .line 209
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 210
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 211
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 214
    :cond_3
    invoke-virtual {v0, v4}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v6, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 218
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    :cond_4
    iget-object v6, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    invoke-virtual {v6, v5}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 222
    iget-object v6, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v4, v6, :cond_5

    const/4 v6, 0x1

    .line 223
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private scrollToTab(II)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 253
    :cond_1
    iget p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->scrollTo(II)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4

    .line 166
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 168
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x101030e

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 176
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 180
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 234
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 236
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->scrollToTab(II)V

    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setCustomTabColorizer(Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabColorizer;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->setCustomTabColorizer(Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabColorizer;)V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabViewLayoutId:I

    .line 144
    iput p2, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabViewTextViewId:I

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mDistributeEvenly:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mTabStrip:Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->removeAllViews()V

    .line 154
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/mrpoid/mrplist/view/SlidingTabLayout;Lcom/mrpoid/mrplist/view/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 157
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->populateTabStrip()V

    :cond_0
    return-void
.end method
