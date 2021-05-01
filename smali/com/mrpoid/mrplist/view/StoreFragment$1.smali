.class Lcom/mrpoid/mrplist/view/StoreFragment$1;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/StoreFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/StoreFragment;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/StoreFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/StoreFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StoreFragment;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StoreFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StoreFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/StoreFragment;->pageTitles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 105
    new-instance v0, Lcom/mrpoid/mrplist/view/StorePageFragment;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/StorePageFragment;-><init>()V

    .line 106
    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/StorePageFragment;->setTypeId(I)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StoreFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StoreFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/StoreFragment;->pageTitles:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/StoreFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StoreFragment;

    iget-object v1, v1, Lcom/mrpoid/mrplist/view/StoreFragment;->pageTitles:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method
