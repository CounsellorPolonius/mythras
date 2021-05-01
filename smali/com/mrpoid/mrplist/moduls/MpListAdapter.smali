.class public final Lcom/mrpoid/mrplist/moduls/MpListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;
    }
.end annotation


# instance fields
.field private colors:[I

.field private context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/MpFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addData(Lcom/mrpoid/mrplist/moduls/MpFile;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/MpFile;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/mrpoid/mrplist/moduls/MpFile;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/mrplist/moduls/MpFile;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/MpFile;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 102
    iget-object p3, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mrpoid/mrplist/moduls/MpFile;

    if-nez p2, :cond_0

    .line 105
    iget-object p2, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0044

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 106
    new-instance v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;-><init>()V

    const v1, 0x7f090068

    .line 108
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f090127

    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->viewDiv:Landroid/view/View;

    const v1, 0x7f090104

    .line 111
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->tv_title:Landroid/widget/TextView;

    const v1, 0x7f090105

    .line 112
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->tv_msg:Landroid/widget/TextView;

    const v1, 0x7f090106

    .line 113
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->tv_size:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;

    .line 120
    :goto_0
    iget-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/mrpoid/mrplist/moduls/MpFile;->getTtile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->tv_size:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/mrpoid/mrplist/moduls/MpFile;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->tv_msg:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/mrpoid/mrplist/moduls/MpFile;->getSizeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/mrpoid/mrplist/moduls/MpFile;->getType()Lcom/mrpoid/mrplist/moduls/FileType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mrpoid/mrplist/moduls/FileType;->getIconRes()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_1

    .line 132
    iget-object p1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->viewDiv:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 134
    :cond_1
    iget-object p1, v0, Lcom/mrpoid/mrplist/moduls/MpListAdapter$ViewHoder;->viewDiv:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public remove(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setColors([I)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->colors:[I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/MpFile;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/moduls/MpListAdapter;->notifyDataSetChanged()V

    return-void
.end method
