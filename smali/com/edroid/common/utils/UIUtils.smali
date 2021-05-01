.class public Lcom/edroid/common/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/res/Resources;I)I
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    int-to-float p1, p1

    .line 29
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static px2dp(Landroid/content/res/Resources;I)I
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    int-to-float p1, p1

    .line 24
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static revColor(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x10

    rsub-int v1, v1, 0xff

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    rsub-int v2, v2, 0xff

    and-int/lit16 v2, v2, 0xff

    rsub-int p0, p0, 0xff

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static toastMessage(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static toastMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static toastMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
