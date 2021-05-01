.class public Lcom/mrpoid/game/keysprite/ChooserFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ChooserFragment.java"


# instance fields
.field private mLitener:Lcom/mrpoid/game/keysprite/OnChooseLitener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/game/keysprite/ChooserFragment;)Lcom/mrpoid/game/keysprite/OnChooseLitener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mrpoid/game/keysprite/ChooserFragment;->mLitener:Lcom/mrpoid/game/keysprite/OnChooseLitener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mrpoid/game/keysprite/ChooserFragment;Ljava/io/File;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/mrpoid/game/keysprite/ChooserFragment;->loadAndRun(Ljava/io/File;)V

    return-void
.end method

.method private loadAndRun(Ljava/io/File;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/mrpoid/game/keysprite/SampleKeySprite;

    invoke-direct {v0}, Lcom/mrpoid/game/keysprite/SampleKeySprite;-><init>()V

    .line 28
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mrpoid/game/keysprite/KeySprite;->fromXml(Ljava/io/File;)V

    .line 29
    iget-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment;->mLitener:Lcom/mrpoid/game/keysprite/OnChooseLitener;

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment;->mLitener:Lcom/mrpoid/game/keysprite/OnChooseLitener;

    invoke-interface {p1, v0}, Lcom/mrpoid/game/keysprite/OnChooseLitener;->onChoose(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string p1, "keySprites"

    .line 42
    invoke-static {p1}, Lcom/mrpoid/core/Emulator;->getPublicFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mrpoid/game/keysprite/ChooserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/mrpoid/R$string;->choose_one:I

    .line 46
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mrpoid/game/keysprite/ChooserFragment$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/mrpoid/game/keysprite/ChooserFragment$3;-><init>(Lcom/mrpoid/game/keysprite/ChooserFragment;Ljava/io/File;[Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/mrpoid/R$string;->create:I

    new-instance v1, Lcom/mrpoid/game/keysprite/ChooserFragment$2;

    invoke-direct {v1, p0}, Lcom/mrpoid/game/keysprite/ChooserFragment$2;-><init>(Lcom/mrpoid/game/keysprite/ChooserFragment;)V

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/mrpoid/game/keysprite/ChooserFragment$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/game/keysprite/ChooserFragment$1;-><init>(Lcom/mrpoid/game/keysprite/ChooserFragment;)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setOnChooseLitener(Lcom/mrpoid/game/keysprite/OnChooseLitener;)Lcom/mrpoid/game/keysprite/ChooserFragment;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mrpoid/game/keysprite/ChooserFragment;->mLitener:Lcom/mrpoid/game/keysprite/OnChooseLitener;

    return-object p0
.end method
