.class public Lcom/mrpoid/view/ListViewPathAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewPathAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemViewResource:I

.field private listContainer:Landroid/view/LayoutInflater;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mrpoid/view/ListViewPathAdapter;->context:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/view/ListViewPathAdapter;->listContainer:Landroid/view/LayoutInflater;

    .line 48
    iput p3, p0, Lcom/mrpoid/view/ListViewPathAdapter;->itemViewResource:I

    .line 49
    iput-object p2, p0, Lcom/mrpoid/view/ListViewPathAdapter;->listItems:Ljava/util/List;

    .line 50
    iput-object p4, p0, Lcom/mrpoid/view/ListViewPathAdapter;->listener:Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/view/ListViewPathAdapter;)Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mrpoid/view/ListViewPathAdapter;->listener:Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mrpoid/view/ListViewPathAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/mrpoid/view/ListViewPathAdapter;->listContainer:Landroid/view/LayoutInflater;

    iget p3, p0, Lcom/mrpoid/view/ListViewPathAdapter;->itemViewResource:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    :cond_0
    sget p3, Lcom/mrpoid/R$id;->ll_op:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    .line 72
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    sget p3, Lcom/mrpoid/R$id;->tvPath:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/mrpoid/view/ListViewPathAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget v0, Lcom/mrpoid/R$id;->btn_del:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    new-instance v1, Lcom/mrpoid/view/ListViewPathAdapter$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/mrpoid/view/ListViewPathAdapter$1;-><init>(Lcom/mrpoid/view/ListViewPathAdapter;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcom/mrpoid/R$id;->btn_rename:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 84
    new-instance v1, Lcom/mrpoid/view/ListViewPathAdapter$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/mrpoid/view/ListViewPathAdapter$2;-><init>(Lcom/mrpoid/view/ListViewPathAdapter;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
