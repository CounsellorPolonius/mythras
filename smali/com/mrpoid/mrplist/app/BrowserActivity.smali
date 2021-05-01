.class public Lcom/mrpoid/mrplist/app/BrowserActivity;
.super Lcom/mrpoid/mrplist/app/BaseActivity;
.source "BrowserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/mrpoid/mrplist/app/BaseActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mrpoid/mrplist/app/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 16
    invoke-super {p0, p1}, Lcom/mrpoid/mrplist/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/BrowserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 25
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "url"

    const-string v2, "url"

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/BrowserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/mrpoid/mrplist/view/BrowserFragment;

    invoke-direct {v1}, Lcom/mrpoid/mrplist/view/BrowserFragment;-><init>()V

    .line 32
    invoke-virtual {v1, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x1020002

    const-string v2, "main"

    .line 33
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
