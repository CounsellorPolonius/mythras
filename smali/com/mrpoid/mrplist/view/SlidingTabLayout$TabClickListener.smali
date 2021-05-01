.class Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mrpoid/mrplist/view/SlidingTabLayout;Lcom/mrpoid/mrplist/view/SlidingTabLayout$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;-><init>(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {v1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$200(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Lcom/mrpoid/mrplist/view/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mrpoid/mrplist/view/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabClickListener;->this$0:Lcom/mrpoid/mrplist/view/SlidingTabLayout;

    invoke-static {p1}, Lcom/mrpoid/mrplist/view/SlidingTabLayout;->access$500(Lcom/mrpoid/mrplist/view/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
