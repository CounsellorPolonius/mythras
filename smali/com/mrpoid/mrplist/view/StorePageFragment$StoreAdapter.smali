.class Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "StorePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/mrplist/view/StorePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StoreAdapter"
.end annotation


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->items:Ljava/util/List;

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method appendData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method clearData()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mrpoid/mrplist/moduls/Store$AppItem;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 148
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    move-result-object p1

    iget p1, p1, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->appid:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 155
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->getItem(I)Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    move-result-object p1

    if-nez p2, :cond_0

    .line 158
    iget-object p2, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b0045

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 159
    new-instance p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;

    invoke-direct {p3}, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;-><init>()V

    const v0, 0x7f090063

    .line 161
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f09006c

    .line 163
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f090041

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;->tv_desc:Landroid/widget/TextView;

    const v0, 0x7f0900fa

    .line 165
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;->tv_msg:Landroid/widget/TextView;

    const v0, 0x7f0900f9

    .line 166
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;->tv_size:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;

    .line 173
    :goto_0
    iget-object v0, p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;->tv_title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;->tv_desc:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p3, p3, Lcom/mrpoid/mrplist/view/StorePageFragment$ViewHoder;->tv_size:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->addTime:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
