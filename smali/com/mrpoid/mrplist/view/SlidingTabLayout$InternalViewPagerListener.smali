.class Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mrpoid/mrplist/view/SlidingTabLayout;Lcom/mrpoid/mrplist/view/SlidingTabLayout$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 286
    iput p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 288
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$400(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$400(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 272
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$300(Lcom/mrpoid/mrplist/view/SlidingTabLayout;II)V

    .line 278
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$400(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$400(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 295
    iget v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 297
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$300(Lcom/mrpoid/mrplist/view/SlidingTabLayout;II)V

    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 300
    iget-object v2, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v2}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$400(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v0}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$400(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method
