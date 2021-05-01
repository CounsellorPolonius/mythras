.class public Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SelScreenDialogFragment.java"


# instance fields
.field screensize_items:[Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->runMrp()V

    return-void
.end method

.method public static open(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    .line 47
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "RunMrpModeDialog"

    .line 49
    invoke-virtual {v0, p0, p1}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private runMrp()V
    .locals 4

    .line 19
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->screensize_items:[Ljava/lang/String;

    iget v3, p0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->type:I

    aget-object v2, v2, v3

    invoke-static {v1, v0, v2}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->type:I

    .line 26
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->screensize_items:[Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00ac

    .line 29
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->screensize_items:[Ljava/lang/String;

    new-instance v2, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment$2;-><init>(Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;)V

    .line 30
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment$1;-><init>(Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;)V

    const v1, 0x7f0d008e

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
