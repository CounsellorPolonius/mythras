.class public Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;
.super Landroid/app/Activity;
.source "KeySpriteEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;

.field mEditText:Landroid/widget/EditText;

.field mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

.field mKeyTitles:[Ljava/lang/String;

.field selectedKey:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->save(Ljava/lang/String;)V

    return-void
.end method

.method private addSprite()V
    .locals 4

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x3e8

    .line 156
    :goto_0
    new-instance v1, Lcom/mrpoid/game/keysprite/Sprite;

    iget-object v2, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeyTitles:[Ljava/lang/String;

    iget v3, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->selectedKey:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->selectedKey:I

    invoke-direct {v1, v2, v3, v0}, Lcom/mrpoid/game/keysprite/Sprite;-><init>(Ljava/lang/String;II)V

    .line 157
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-interface {v0, v1}, Lcom/mrpoid/game/keysprite/KeySprite;->add(Lcom/mrpoid/game/keysprite/Sprite;)V

    .line 158
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mAdapter:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private save(Ljava/lang/String;)V
    .locals 3

    const-string v0, "keySprites"

    .line 99
    invoke-static {v0}, Lcom/mrpoid/core/Emulator;->getPublicFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->createDir(Ljava/io/File;)I

    .line 102
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-interface {v0, v1}, Lcom/mrpoid/game/keysprite/KeySprite;->toXml(Ljava/io/File;)V

    .line 105
    invoke-virtual {p0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->getActivity()Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    move-result-object v0

    const-string v1, "\u4fdd\u5b58\u6210\u529f\uff01"

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    invoke-virtual {p0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->getActivity()Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;

    move-result-object v0

    const-string v1, "\u4fdd\u5b58\u5931\u8d25\uff01"

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActivity()Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;
    .locals 0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->addSprite()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/mrpoid/R$layout;->activity_key_sprite:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->setContentView(I)V

    .line 55
    new-instance p1, Lcom/mrpoid/game/keysprite/SampleKeySprite;

    invoke-direct {p1}, Lcom/mrpoid/game/keysprite/SampleKeySprite;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeySprite:Lcom/mrpoid/game/keysprite/KeySprite;

    .line 56
    invoke-virtual {p0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mrpoid/R$array;->key_titles:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeyTitles:[Ljava/lang/String;

    .line 58
    sget p1, Lcom/mrpoid/R$id;->spinner1:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 60
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mKeyTitles:[Ljava/lang/String;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 68
    sget p1, Lcom/mrpoid/R$id;->listView1:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 69
    new-instance v0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;

    invoke-direct {v0, p0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;-><init>(Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;)V

    iput-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mAdapter:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;

    .line 70
    iget-object v0, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mAdapter:Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$MyAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    sget p1, Lcom/mrpoid/R$id;->ibtn_add:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget p1, Lcom/mrpoid/R$id;->edit_time:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->mEditText:Landroid/widget/EditText;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 116
    sget v0, Lcom/mrpoid/R$layout;->dialog_single_edit:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 117
    sget v0, Lcom/mrpoid/R$id;->editText1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 119
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u8f93\u5165\u6587\u4ef6\u540d\uff1a"

    .line 120
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 121
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v2, "\u4fdd\u5b58"

    new-instance v3, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity$1;-><init>(Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;Landroid/widget/EditText;)V

    .line 122
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "\u4fdd\u5b58"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "\u8fd0\u884c"

    const/4 v3, 0x2

    .line 79
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 142
    iput p3, p0, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->selectedKey:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 p1, 0x3e9

    .line 88
    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keysprite/KeySpriteEditorActivity;->showDialog(I)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
