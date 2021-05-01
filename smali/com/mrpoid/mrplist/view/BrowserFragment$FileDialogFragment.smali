.class public Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDialogFragment"
.end annotation


# instance fields
.field apkResources:Lcom/edroid/common/utils/ApkUtils$ApkResources;

.field contentView:Landroid/view/View;

.field editText:Landroid/widget/EditText;

.field fileType:I

.field path:Ljava/lang/String;

.field textView1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 477
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private handle()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->textView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    const-string v1, "apk"

    invoke-static {v0, v1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->matchEnd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/edroid/common/utils/ApkUtils;->makeApkResources(Landroid/content/Context;Ljava/lang/String;)Lcom/edroid/common/utils/ApkUtils$ApkResources;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->apkResources:Lcom/edroid/common/utils/ApkUtils$ApkResources;

    .line 495
    iput v2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->fileType:I

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    const-string v1, "mrp"

    invoke-static {v0, v1}, Lcom/mrpoid/mrplist/view/BrowserFragment;->matchEnd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 497
    iput v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->fileType:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09002a

    if-ne v0, v1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 505
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 507
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 510
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    .line 511
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->textView1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "success!"

    invoke-static {p1, v0}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09002b

    if-ne p1, v0, :cond_1

    .line 517
    iget p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->fileType:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 524
    :pswitch_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/FavMgr;->getInstance()Lcom/mrpoid/mrplist/moduls/FavMgr;

    move-result-object p1

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :pswitch_1
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/edroid/common/utils/ApkUtils;->getInstallIntent(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 534
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 536
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0030

    const/4 v1, 0x0

    .line 537
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->contentView:Landroid/view/View;

    .line 539
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->contentView:Landroid/view/View;

    const v0, 0x7f09002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->contentView:Landroid/view/View;

    const v0, 0x7f09002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->contentView:Landroid/view/View;

    const v0, 0x7f090049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->editText:Landroid/widget/EditText;

    .line 542
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->contentView:Landroid/view/View;

    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->textView1:Landroid/widget/TextView;

    .line 544
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->path:Ljava/lang/String;

    .line 545
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->handle()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 550
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d005b

    .line 551
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->contentView:Landroid/view/View;

    .line 552
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 553
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d0038

    const/4 v1, 0x0

    .line 554
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 556
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->apkResources:Lcom/edroid/common/utils/ApkUtils$ApkResources;

    .line 559
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->apkResources:Lcom/edroid/common/utils/ApkUtils$ApkResources;

    .line 563
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 568
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 570
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->apkResources:Lcom/edroid/common/utils/ApkUtils$ApkResources;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$FileDialogFragment;->apkResources:Lcom/edroid/common/utils/ApkUtils$ApkResources;

    invoke-virtual {v0}, Lcom/edroid/common/utils/ApkUtils$ApkResources;->recyle()V

    :cond_0
    return-void
.end method
