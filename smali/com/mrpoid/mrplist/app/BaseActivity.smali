.class public Lcom/mrpoid/mrplist/app/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setTranslucentNavigation(Z)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 44
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 46
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x8000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setTranslucentStatus(Z)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 32
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 34
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x4000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
