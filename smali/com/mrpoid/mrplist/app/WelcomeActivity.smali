.class public Lcom/mrpoid/mrplist/app/WelcomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WelcomeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method gen([Ljava/lang/String;I)V
    .locals 0

    .line 66
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method go()V
    .locals 4

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "showLogo"

    const/4 v3, 0x1

    .line 23
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mrpoid/mrplist/app/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->finish()V

    return-void

    .line 29
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showLogo"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mrpoid/mrplist/app/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity$1;-><init>(Lcom/mrpoid/mrplist/app/WelcomeActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method gp1()V
    .locals 3

    const/4 v0, 0x2

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->isgen([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0, v0, v2}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gen([Ljava/lang/String;I)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gp2()V

    :goto_0
    return-void
.end method

.method gp2()V
    .locals 4

    const/4 v0, 0x2

    .line 58
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 59
    invoke-virtual {p0, v1}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->isgen([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-virtual {p0, v1, v0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gen([Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gp3()V

    :goto_0
    return-void
.end method

.method gp3()V
    .locals 3

    const/4 v0, 0x1

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->isgen([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gen([Ljava/lang/String;I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->go()V

    :goto_0
    return-void
.end method

.method isgen([Ljava/lang/String;)Z
    .locals 4

    .line 70
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 71
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method isok([I)Z
    .locals 4

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 126
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0b0021

    .line 128
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->setContentView(I)V

    .line 132
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gp1()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->go()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 140
    invoke-static {p0}, Lcom/edroid/common/utils/UmengUtils;->onPause(Landroid/content/Context;)V

    .line 142
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->isok([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->go()V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gp3()V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->isok([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gp3()V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gp2()V

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->isok([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gp2()V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->gp1()V

    .line 117
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .line 147
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 149
    invoke-static {p0}, Lcom/edroid/common/utils/UmengUtils;->onResume(Landroid/content/Context;)V

    return-void
.end method
