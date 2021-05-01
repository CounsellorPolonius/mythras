.class public abstract Lcom/mrpoid/app/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppCompatPreferenceActivity.java"


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mrpoid/app/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/app/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/app/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 26
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 96
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 72
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 90
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 78
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method
