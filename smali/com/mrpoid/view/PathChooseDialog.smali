.class public Lcom/mrpoid/view/PathChooseDialog;
.super Landroid/app/Dialog;
.source "PathChooseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/view/PathChooseDialog$ChooseCompleteListener;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dir:Ljava/lang/String;

.field private firstIndex:I

.field private isBack:Z

.field private lastSelectItem:Landroid/view/View;

.field private listAdapter:Landroid/widget/ListAdapter;

.field private listener:Lcom/mrpoid/view/PathChooseDialog$ChooseCompleteListener;

.field private lv:Landroid/widget/ListView;

.field private pListener:Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;

.field private pathStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljava/lang/String;

.field private tvCurPath:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/mrpoid/view/PathChooseDialog$ChooseCompleteListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/mrpoid/view/PathChooseDialog;->firstIndex:I

    .line 46
    iput-boolean v0, p0, Lcom/mrpoid/view/PathChooseDialog;->isBack:Z

    .line 57
    new-instance v0, Lcom/mrpoid/view/PathChooseDialog$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/view/PathChooseDialog$1;-><init>(Lcom/mrpoid/view/PathChooseDialog;)V

    iput-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->pListener:Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;

    .line 124
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->ctx:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/mrpoid/view/PathChooseDialog;->listener:Lcom/mrpoid/view/PathChooseDialog$ChooseCompleteListener;

    .line 126
    iput-object p3, p0, Lcom/mrpoid/view/PathChooseDialog;->root:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/mrpoid/view/PathChooseDialog;->dir:Ljava/lang/String;

    return-void
.end method

.method public static ChoosePath(Landroid/content/Context;Lcom/mrpoid/view/PathChooseDialog$ChooseCompleteListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/mrpoid/view/PathChooseDialog;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mrpoid/view/PathChooseDialog;-><init>(Landroid/content/Context;Lcom/mrpoid/view/PathChooseDialog$ChooseCompleteListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mrpoid/view/PathChooseDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mrpoid/view/PathChooseDialog;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/mrpoid/view/PathChooseDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->data:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mrpoid/view/PathChooseDialog;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/mrpoid/view/PathChooseDialog;->firstIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/mrpoid/view/PathChooseDialog;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/mrpoid/view/PathChooseDialog;->firstIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/mrpoid/view/PathChooseDialog;Ljava/util/List;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mrpoid/view/PathChooseDialog;->refleshListView(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mrpoid/view/PathChooseDialog;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/Stack;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mrpoid/view/PathChooseDialog;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mrpoid/view/PathChooseDialog;->tvCurPath:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mrpoid/view/PathChooseDialog;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mrpoid/view/PathChooseDialog;->lastSelectItem:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lcom/mrpoid/view/PathChooseDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->lastSelectItem:Landroid/view/View;

    return-object p1
.end method

.method private init()V
    .locals 5

    const v0, 0x102000a

    .line 140
    invoke-virtual {p0, v0}, Lcom/mrpoid/view/PathChooseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->lv:Landroid/widget/ListView;

    .line 141
    sget v0, Lcom/mrpoid/R$id;->tv_cur_path:I

    invoke-virtual {p0, v0}, Lcom/mrpoid/view/PathChooseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->tvCurPath:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/mrpoid/R$id;->btn_comfirm:I

    invoke-virtual {p0, v0}, Lcom/mrpoid/view/PathChooseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v0, Lcom/mrpoid/R$id;->btn_back:I

    invoke-virtual {p0, v0}, Lcom/mrpoid/view/PathChooseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/mrpoid/R$id;->btn_new:I

    invoke-virtual {p0, v0}, Lcom/mrpoid/view/PathChooseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->root:Ljava/lang/String;

    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->root:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->root:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->root:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->dir:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->dir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->dir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v1, v4, :cond_1

    .line 155
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    :cond_2
    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->listPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->data:Ljava/util/List;

    .line 162
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->tvCurPath:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->data:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/mrpoid/view/PathChooseDialog;->refleshListView(Ljava/util/List;I)V

    .line 166
    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->lv:Landroid/widget/ListView;

    new-instance v1, Lcom/mrpoid/view/PathChooseDialog$2;

    invoke-direct {v1, p0}, Lcom/mrpoid/view/PathChooseDialog$2;-><init>(Lcom/mrpoid/view/PathChooseDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->lv:Landroid/widget/ListView;

    new-instance v1, Lcom/mrpoid/view/PathChooseDialog$3;

    invoke-direct {v1, p0}, Lcom/mrpoid/view/PathChooseDialog$3;-><init>(Lcom/mrpoid/view/PathChooseDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private refleshListView(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/edroid/common/utils/FileUtils;->getSDRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lost+found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Lcom/mrpoid/view/ListViewPathAdapter;

    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->ctx:Landroid/content/Context;

    sget v2, Lcom/mrpoid/R$layout;->file_path_listitem:I

    iget-object v3, p0, Lcom/mrpoid/view/PathChooseDialog;->pListener:Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/mrpoid/view/ListViewPathAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;)V

    iput-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->listAdapter:Landroid/widget/ListAdapter;

    .line 202
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->lv:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->listAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->lv:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->btn_back:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    .line 210
    iput-boolean v2, p0, Lcom/mrpoid/view/PathChooseDialog;->isBack:Z

    .line 211
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 212
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/edroid/common/utils/FileUtils;->listPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->data:Ljava/util/List;

    .line 213
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->tvCurPath:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->data:Ljava/util/List;

    iget v0, p0, Lcom/mrpoid/view/PathChooseDialog;->firstIndex:I

    invoke-direct {p0, p1, v0}, Lcom/mrpoid/view/PathChooseDialog;->refleshListView(Ljava/util/List;I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->btn_comfirm:I

    if-ne v0, v1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog;->pathStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->root:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->listener:Lcom/mrpoid/view/PathChooseDialog$ChooseCompleteListener;

    invoke-interface {v1, p1, v0}, Lcom/mrpoid/view/PathChooseDialog$ChooseCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/mrpoid/view/PathChooseDialog;->dismiss()V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mrpoid/R$id;->btn_new:I

    if-ne p1, v0, :cond_2

    .line 222
    new-instance p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog;->ctx:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v0, "\u65b0\u5efa\u6587\u4ef6\u5939"

    .line 223
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u65b0\u5efa\u6587\u4ef6\u5939"

    .line 225
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    .line 228
    new-instance v2, Lcom/mrpoid/view/PathChooseDialog$4;

    invoke-direct {v2, p0, p1}, Lcom/mrpoid/view/PathChooseDialog$4;-><init>(Lcom/mrpoid/view/PathChooseDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u53d6\u6d88"

    .line 253
    new-instance v1, Lcom/mrpoid/view/PathChooseDialog$5;

    invoke-direct {v1, p0}, Lcom/mrpoid/view/PathChooseDialog$5;-><init>(Lcom/mrpoid/view/PathChooseDialog;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Lcom/mrpoid/view/PathChooseDialog;->requestWindowFeature(I)Z

    .line 134
    sget v0, Lcom/mrpoid/R$layout;->file_path_chooser:I

    invoke-virtual {p0, v0}, Lcom/mrpoid/view/PathChooseDialog;->setContentView(I)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/mrpoid/view/PathChooseDialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    invoke-direct {p0}, Lcom/mrpoid/view/PathChooseDialog;->init()V

    return-void
.end method
