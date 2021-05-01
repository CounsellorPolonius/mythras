.class public Lcom/mrpoid/mrplist/view/RunMrpDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "RunMrpDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/mrplist/view/RunMrpDialog;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->runMrp(I)V

    return-void
.end method

.method public static open(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 3

    .line 34
    new-instance v0, Lcom/mrpoid/mrplist/view/RunMrpDialog;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/RunMrpDialog;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    .line 37
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "RunMrpModeDialog"

    .line 39
    invoke-virtual {v0, p0, p1}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private runMrp(I)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 22
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/mrpoid/mrplist/view/RunMrpDialog$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/mrplist/view/RunMrpDialog$1;-><init>(Lcom/mrpoid/mrplist/view/RunMrpDialog;)V

    const v1, 0x7f03000f

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
