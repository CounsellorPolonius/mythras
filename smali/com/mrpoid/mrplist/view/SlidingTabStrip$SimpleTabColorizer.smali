.class Lcom/mrpoid/mrplist/view/SlidingTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SlidingTabStrip.java"

# interfaces
.implements Lcom/mrpoid/mrplist/view/SlidingTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/SlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabColorizer"
.end annotation


# instance fields
.field private mIndicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mrpoid/mrplist/view/SlidingTabStrip$1;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/SlidingTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndicatorColor(I)I
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    array-length v1, v1

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method varargs setIndicatorColors([I)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    return-void
.end method
