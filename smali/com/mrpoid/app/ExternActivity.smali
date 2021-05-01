.class public Lcom/mrpoid/app/ExternActivity;
.super Lcom/mrpoid/app/BaseActivity;
.source "ExternActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MrpoidExtern"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mrpoid/app/BaseActivity;-><init>()V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 26
    invoke-virtual {p0}, Lcom/mrpoid/app/ExternActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 31
    invoke-super {p0, p1}, Lcom/mrpoid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/mrpoid/app/ExternActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MrpoidExtern"

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "\u53c2\u6570\u975e\u6cd5\uff01"

    .line 41
    invoke-direct {p0, p1}, Lcom/mrpoid/app/ExternActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "\u65e0\u6cd5\u8bfb\u53d6\u8be5\u6587\u4ef6\uff01"

    .line 49
    invoke-direct {p0, p1}, Lcom/mrpoid/app/ExternActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_1
    invoke-static {}, Lcom/mrpoid/core/Emulator;->getInstance()Lcom/mrpoid/core/Emulator;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/mrpoid/core/Emulator;->getVmWorkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mrpoid/core/Emulator;->getVmFullFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 58
    invoke-static {p1, v0}, Lcom/edroid/common/utils/FileUtils;->copyTo(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-ne v3, v0, :cond_2

    const-string p1, "\u975e mythroad \u4e0b\uff0c\u590d\u5236\u6587\u4ef6\u5931\u8d25\uff01"

    .line 59
    invoke-direct {p0, p1}, Lcom/mrpoid/app/ExternActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {v1}, Lcom/mrpoid/core/Emulator;->getVmWorkPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 68
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 69
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/mrpoid/app/BaseActivity;->onRestart()V

    .line 80
    invoke-virtual {p0}, Lcom/mrpoid/app/ExternActivity;->finish()V

    return-void
.end method
