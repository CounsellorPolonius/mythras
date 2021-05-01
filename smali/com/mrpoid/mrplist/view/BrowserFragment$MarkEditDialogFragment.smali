.class public Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/BrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkEditDialogFragment"
.end annotation


# instance fields
.field contentView:Landroid/view/View;

.field editText1:Landroid/widget/EditText;

.field editText2:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 582
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;)V
    .locals 0

    .line 582
    invoke-direct {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->saveMark()V

    return-void
.end method

.method private saveMark()V
    .locals 3

    .line 588
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->editText1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    iget-object v2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->editText2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 597
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0b0032

    .line 598
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->contentView:Landroid/view/View;

    .line 600
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f090049

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->editText1:Landroid/widget/EditText;

    .line 601
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->contentView:Landroid/view/View;

    const v1, 0x7f09004a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->editText2:Landroid/widget/EditText;

    .line 603
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    const/16 v2, 0xa

    .line 607
    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "http://"

    .line 611
    :cond_1
    iget-object v2, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->editText1:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->editText2:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 614
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e66\u7b7e\u7f16\u8f91"

    .line 615
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;->contentView:Landroid/view/View;

    .line 616
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0d00a7

    new-instance v2, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment$1;-><init>(Lcom/mrpoid/mrplist/view/BrowserFragment$MarkEditDialogFragment;)V

    .line 617
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0d0038

    .line 624
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 625
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
