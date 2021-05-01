.class public Lcom/mrpoid/mrplist/app/ExplorerActivity;
.super Lcom/mrpoid/mrplist/app/BaseActivity;
.source "ExplorerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/mrpoid/mrplist/app/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 14
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/ExplorerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/ExplorerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/ExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/mrpoid/mrplist/view/ExplorerFragment;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/ExplorerFragment;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/ExplorerFragment;->setStartPath(Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/ExplorerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    const-string v2, "main"

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
