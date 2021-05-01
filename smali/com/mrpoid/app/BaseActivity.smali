.class Lcom/mrpoid/app/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 0

    .line 30
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 32
    invoke-static {p0}, Lcom/edroid/common/utils/SdkUtils;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 37
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 39
    invoke-static {p0}, Lcom/edroid/common/utils/SdkUtils;->onResume(Landroid/content/Context;)V

    return-void
.end method
